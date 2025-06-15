Apk Download link: https://drive.google.com/file/d/1lPrTD1fLL0Yojuh5iaRLwc5SpTfOlXyC/view?usp=drive_link

# 💬 Flutter Chat App

A real-time **chatting app** built using **Flutter** and **Firebase**, enabling two users to chat with each other through a dedicated chat room. It supports user authentication and stores messages with timestamps using Firestore's nested documents structure.

## ✨ Features

* 🔐 **Firebase Authentication** for user sign-up and login
* 📁 **Firebase Firestore** for real-time chat storage
* 🗨️ **Text-based messaging** between authenticated users
* 🕒 **Timestamps** saved with each message
* 🧩 Automatically generates a **unique chat room** for each user pair
* 📄 Messages are stored inside **nested subcollections** within each chat room
* 📱 Clean and responsive UI with a Flutter-native design

## 🛠️ Built With

* Flutter & Dart
* Firebase Authentication
* Firebase Cloud Firestore
* Firebase Core

## 🧰 Architecture

* Each chat between two users is stored in a **unique chat room document**
* Messages are saved as documents inside a **`messages` subcollection** under the chat room
* Each message contains:

  * `text`: the message content
  * `senderId`: the user ID of the sender
  * `timestamp`: the time the message was sent

### 🔄 Example Firestore Structure:

```
chat_rooms (collection)
 └── roomId_user1_user2 (document)
     └── messages (subcollection)
         ├── message1 (document)
         ├── message2 (document)
```

## 🧪 How It Works

1. Users sign in using Firebase Authentication.
2. When two users initiate a chat, a unique **chat room** is created.
3. Messages typed in the chat screen are:

   * Sent to Firestore
   * Displayed in real time
   * Stored with timestamps for proper sorting
4. Messages are retrieved using `StreamBuilder` for live updates.

## 🚀 Getting Started

### Prerequisites

* Flutter SDK
* Firebase project set up
* Android Studio / VS Code
* Firebase CLI (optional)

### Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/your-username/flutter-chat-app.git
   cd flutter-chat-app
   ```

2. **Install dependencies**:

   ```bash
   flutter pub get
   ```

3. **Configure Firebase**:

   * Download the `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS)
   * Place them in the appropriate directories as per Firebase setup

4. **Run the app**:

   ```bash
   flutter run
   ```

## 📸 Screenshots

![WhatsApp Image 2025-06-15 at 23 12 32_0412b906](https://github.com/user-attachments/assets/5bee7f8a-5e69-42f3-922e-2262b1840321)
![WhatsApp Image 2025-06-15 at 23 12 33_d1467364](https://github.com/user-attachments/assets/bf6bfcde-433f-4df8-be8c-923418c9292b)
![WhatsApp Image 2025-06-15 at 23 12 34_321b5637](https://github.com/user-attachments/assets/d4bb61fe-75a2-47a1-98cd-a5da4bbcdbf2)
![WhatsApp Image 2025-06-15 at 23 12 36_1073cd76](https://github.com/user-attachments/assets/e8a27aa2-8db5-4600-a766-9f43d27ff4a3)
![WhatsApp Image 2025-06-15 at 23 12 37_44af1818](https://github.com/user-attachments/assets/c86ac471-b590-4fb0-952d-3ac60d8642ec)
![WhatsApp Image 2025-06-15 at 23 12 35_560607af](https://github.com/user-attachments/assets/9940f570-bd55-436d-8470-c722aa868ee9)
![WhatsApp Image 2025-06-15 at 23 12 36_4e6e4757](https://github.com/user-attachments/assets/e929afd6-aa8d-41f0-a618-685dae1b29a3)


## 📄 Todo / Future Enhancements

* 🖼️ Image messaging using Firebase Storage
* ✅ Message read receipts
* 🧑‍🤝‍🧑 Group chat support
* 🔔 Push notifications

## 📝 License

This project is licensed under the [MIT License](LICENSE).

---
