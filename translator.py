from flask import Flask, request, jsonify
from transformers import pipeline

app = Flask(__name__)

# Specify the model directly
translator = pipeline('translation', model='Helsinki-NLP/opus-mt-fr-en')

@app.route('/translate', methods=['POST'])
def translate():
    data = request.json
    french_text = data['text']
    translated_text = translator(french_text)[0]['translation_text']
    return jsonify({'translated_text': translated_text})

if __name__ == '__main__':
    app.run(debug=True)
