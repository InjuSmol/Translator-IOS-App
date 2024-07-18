# French to English Translator

This is a French-to-English translator web application powered by Python, Flask, and the Hugging Face `transformers` library. The app uses a pre-trained translation model to translate French text to English.

## Technologies Used
- Python
- Flask
- Hugging Face `transformers`
- PyTorch
- TensorFlow (optional, PyTorch is used in this project)
- REST API

## Installation and Running Instructions

### Prerequisites
- Python 3.7 or later
- pip (Python package installer)

### Setup
1. **Clone the repository:**
   ```sh
   git clone git@github.com:InjuSmol/Translator-IOS-App.git
   cd translator

2. **Create a virtual environment (optional but recommended):**
   ```sh
   python -m venv myenv
   source myenv/bin/activate  # On Windows use `myenv\Scripts\activate`
   ```

3. **Install the required packages:**
   ```sh
   pip install flask torch transformers
   ```

### Running the Application
1. **Start the Flask server:**
   ```sh
   python translator.py
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

## Improvements Needed
- **Error Handling:** Implement better error handling for various edge cases, such as empty input text, invalid input format, etc.
- **Frontend Interface:** Develop a user-friendly frontend interface for the application using a framework like React or Angular.
- **Model Optimization:** Optimize the model loading and inference process for faster response times.
- **Dockerization:** Dockerize the application for easier deployment and scalability.
- **Authentication:** Add user authentication and authorization to secure the API endpoints.
- **Logging:** Implement logging for monitoring and debugging purposes.

## Contributing
Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
```

