import SwiftUI

struct ContentView: View {
    @State private var inputText: String = ""
    @State private var translatedText: String = ""

    var body: some View {
        VStack {
            TextField("Enter text in French", text: $inputText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                translateText()
            }) {
                Text("Translate")
            }
            .padding()
            Text(translatedText)
                .padding()
        }
        .padding()
    }

    func translateText() {
        guard let url = URL(string: "http://localhost:5000/translate") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let body: [String: Any] = ["text": inputText]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }

            if let responseJSON = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
               let translatedText = responseJSON["translated_text"] as? String {
                DispatchQueue.main.async {
                    self.translatedText = translatedText
                }
            }
        }

        task.resume()
    }
}
