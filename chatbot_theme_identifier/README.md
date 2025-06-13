Here’s a complete, professional-quality `README.md` tailored for your Wasserstoff internship task.

---

```markdown
# 📄 Document Research & Theme Identification Chatbot

An AI-powered chatbot that allows users to upload legal or research documents (PDFs, scanned images, etc.) and ask natural language questions. The system returns contextually accurate answers with proper citations and also identifies and summarizes key themes across documents.

---

## 🚀 Features

✅ Upload 75+ documents (PDF, scanned images, or plain text)  
✅ Extract text using OCR for scanned images (PaddleOCR)  
✅ Store documents in a vector database (ChromaDB)  
✅ Ask questions in natural language  
✅ Retrieve document-specific answers with citations (page, paragraph)  
✅ Identify and summarize common themes across documents  
✅ Clean and interactive Streamlit UI  
✅ FastAPI backend available for scalable integration  

---

## 🧠 Tech Stack

| Layer        | Tools/Frameworks                     |
|--------------|--------------------------------------|
| Frontend     | Streamlit                            |
| Backend API  | FastAPI (optional alternative)       |
| Vector DB    | ChromaDB                             |
| Embeddings   | `all-MiniLM-L6-v2` (HuggingFace)     |
| LLM          | Groq (LLaMA3-8B-8192) via ChatGroq    |
| OCR Engine   | PaddleOCR                            |
| PDF Handling | PyMuPDF (`fitz`), `pdf2image`        |

---

## 📁 Project Structure

```

chatbot\_theme\_identifier/
├── backend/
│   └── app/
│       ├── api/                  # FastAPI routes
│       ├── core/                 # Configs, utils, constants
│       ├── models/               # Pydantic schemas
│       ├── services/             # Logic for processing, embedding, retrieval
│       └── app.py                # Streamlit frontend app
├── demo/                         # Screenshots or video demo
├── tests/                        # Unit tests
├── requirements.txt              # Python dependencies
├── README.md                     # You're here!
└── .env                          # Environment variables (not committed)

````

---

## ⚙️ Setup Instructions

### 1. 🔧 Install Dependencies

```bash
pip install -r requirements.txt
````

### 2. 🔑 Set Your Environment Variable

Create a `.env` file in the root directory:

```
GROQ_API_KEY=your_groq_api_key_here
```

> ⚠️ Do NOT commit `.env` to GitHub.

---

### 3. ▶️ Run the Streamlit App

```bash
streamlit run backend/app/app.py
```


## 🧪 Example Flow

1. Upload multiple PDFs via the Streamlit UI
2. Ask: **"What regulatory actions are mentioned?"**
3. See:

   * Table of document-wise answers with citations
   * Synthesized theme summary (e.g., "Regulatory Non-compliance")

---

## 📦 Deployment Options

* [ ] Hugging Face Spaces
* [ ] Render
* [ ] Railway
* [ ] Vercel (if converted to web frontend + API)

---

## Demo

> Screenshots and full demo available in [`demo/`](./demo/)

---

## ✅ Checklist

* [x] 75+ document upload
* [x] OCR support
* [x] Vector DB storage
* [x] Natural language QA
* [x] Citation + page/paragraph support
* [x] Theme synthesis
* [x] Streamlit frontend
* [x] `.env` usage
* [x] Unit tests
* [x] Demo screenshots



