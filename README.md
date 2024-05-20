# docs_clone_flutter


Overview:
This project is a web-based collaborative document editor designed to replicate the functionality of Google Docs. The application allows multiple users to create, edit, and share documents in real-time, providing a seamless and interactive experience for collaborative work.

Key Features:

Real-Time Collaboration:

Multiple users can edit the same document simultaneously.
Changes made by users are reflected in real-time, ensuring everyone sees the most updated version instantly.

Rich Text Editing:

A robust editor supporting various formatting options including bold, italics, underline, font changes, and text alignment.
Users can insert images, links, and tables to enhance their documents.

Document Sharing:

Users can share documents with others via email or shareable links.
Permissions can be set to view-only or edit, ensuring control over who can modify the document.

Version Control:

The application maintains a history of document changes, allowing users to revert to previous versions if needed.
Each version is timestamped and tagged with the editor's name for easy tracking.
Commenting and Suggestions:

Users can leave comments on specific parts of the document for feedback or discussion.
Suggestion mode allows users to propose edits that can be accepted or rejected by the document owner.

Cloud Storage Integration:

Documents are saved in the cloud, providing access from any device with an internet connection.
Automatic saving ensures no work is lost, even if the user closes the browser accidentally.

User Authentication and Security:

Secure login system with support for third-party authentication (e.g., Google, Facebook).
All data is encrypted in transit and at rest to protect user information and document content.
Technologies Used:

Frontend: Dart,Riverpod for state management
Backend: Node.js, Express.js for server-side logic, and Socket.io for real-time updates.
Database: MongoDB

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
