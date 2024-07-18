# French to English Translator IOS APP 

This is a simple French-to-English translator iOS mobile application powered by Python, Flask, and the Hugging Face `transformers` library. Uses natural language processing (NLP) powered by a Python backend. The translation is handled by a model from the Hugging Face Transformers library.


## Technologies Used
- Swift: For the iOS mobile application development.
- Python: For the backend server.
- Flask: A lightweight WSGI web application framework for the backend API.
- Transformers: Hugging Face library for NLP tasks.
- PyTorchFor running the translation model.
- REST API

## Installation and Running Instructions

### Prerequisites
- Xcode for iOS development.
- Python 3.7 or later
- pip3 (Python package installer)

### Setup
1. **Clone the repository:**
   ```sh
   git clone git@github.com:InjuSmol/Translator-IOS-App.git
   cd translator

2. **Create a virtual environment (optional but recommended):**
   ```sh
   python3 -m venv myenv
   source myenv/bin/activate  # On Windows use `myenv\Scripts\activate`
   ```

3. **Install the required packages:**
   ```sh
   pip3 install flask torch transformers
   ```

### Running the Application
1. **Start the Flask server:**
   ```sh
   python3 translator.py
   ```

2. **Test the API Endpoint:**
   You can use a tool like `curl` or Postman to send a POST request to your Flask server to test the translation.

   **Using `curl`:**
   ```sh
   curl -X POST http://localhost:5000/translate -H "Content-Type: application/json" -d '{"text": "Bonjour"}'
   ```

   This should return a JSON response with the translated text:
   ```json
   {
       "translated_text": "Hello"
   }
   ```
   
### iOS Application Setup

1. **Open the project in Xcode:**

    Open the `FrenchToEnglishTranslator.xcodeproj` file in Xcode.

2. **Modify the backend URL:**

    Ensure the URL in your Swift code points to the Flask server's address (e.g., `http://localhost:5000/translate`).

3. **Build and run the iOS application on a simulator or device.**

## Improvements Needed
- **Reverse Translation:** Enable English->French Translation.
- **Complex Phrases and Sentences: Allow the translator to handle more complex tasks. 
- **Model Optimization:** Optimize the translation model for faster performance and lower resource consumption.
- **Offline Mode:** Implement offline translation capabilities using on-device models.
- **Error Handling:** Implement better error handling for various edge cases, such as empty input text, invalid input format, etc.
- **Frontend User Interface:** Develop a frontend UI for the application using a framework like React or Angular.
- **Model Optimization:** Optimize the model loading and inference process for faster response times.
- **Dockerization:** Dockerize the application for easier deployment and scalability.
- **Authentication:** Add user authentication and authorization to secure the API endpoints.

## Contributing
Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.


