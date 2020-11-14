import admin = require('firebase-admin');
import * as functions from 'firebase-functions';
import { QueryDocumentSnapshot } from 'firebase-functions/lib/providers/firestore';

admin.initializeApp()

export const onUserCreated = functions.auth.user().onCreate(async (user, _) => {
    functions.logger.debug("Setting 'admin: false' for user: " + user.uid)
    await grantRole(user, false)
    functions.logger.info("'admin: false' set for user: " + user.uid)
})

export const updateRoleOnUserDocUpdate = functions.firestore.document("users/{uid}").onUpdate(async (doc, context) => {
    await updateRoleBasedOnDocument(doc.after, context)
})

export const updateRoleOnUserDocCreate = functions.firestore.document("users/{uid}").onCreate(async (doc, context) => {
    await updateRoleBasedOnDocument(doc, context)
})

async function updateRoleBasedOnDocument(doc:QueryDocumentSnapshot, context: functions.EventContext) {
    const isAdmin : boolean = doc.get("isAdmin")
    const uid : string = context.params["uid"]
    functions.logger.debug("Retrived arguments: [isAdmin: " + isAdmin + ", uid: " + uid + "]")

    const user = await admin.auth().getUser(uid)
    if (!user) {
        functions.logger.error("User: " + uid + " not found")
        return
    }
    await grantRole(user, isAdmin)
    functions.logger.info("admin: " +isAdmin + " granted for user: " + uid)
}

async function grantRole(user: admin.auth.UserRecord, adminAccess: boolean) {
    if (user.customClaims && user.customClaims.admin === adminAccess) {
        return;
    }
    return admin.auth().setCustomUserClaims(user.uid, {
        admin: adminAccess,
    });
}