STUDYSPACE — VS CODE PROJECT

Open this folder in Visual Studio Code. The current app source is index.html. Firebase Hosting serves public/index.html; before deploying edits, run .\\sync-files.ps1 to copy index.html into the hosted page and standalone alias.

Included files
- index.html: complete current Studyspace web app.
- public/index.html: Firebase Hosting page.
- studyspace_pro.html: standalone copy.
- firebase.json and .firebaserc: Firebase configuration for project study-space04.
- firestore.rules: account-owner rules for private planners and admin-only shared starter data.
- sync-files.ps1: syncs the app source into both copies.

Run and debug in VS Code
1. Open the Studyspace_VSCode folder using File > Open Folder.
2. Open Run and Debug (Ctrl+Shift+D).
3. Choose Launch Chrome against localhost and press F5.
4. VS Code starts a Python web server on localhost:8080, then opens Chrome.
The .vscode/launch.json and .vscode/tasks.json files contain this setup. Python must be installed and available as the `python` command. Firebase sign-in requires an authorized web domain. If localhost is rejected, add localhost in Firebase Console > Authentication > Settings > Authorized domains.

Account behavior
Each signed-in user edits and saves their own planner. Notes file attachments and custom reminder audio are stored in the current browser/device; their metadata syncs, but file/audio contents do not transfer to other devices.

Deploying updates
This project targets https://study-space04.web.app. To publish:
1. Install Firebase CLI if needed: npm install -g firebase-tools
2. Sign in in the terminal: firebase login
3. Run .\\sync-files.ps1
4. Publish with: firebase deploy --only hosting,firestore:rules
The deploy command updates the live site and rules.

