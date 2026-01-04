# Self-Help Book Summarizer 📚

A **chapter-wise self-help book summarizer** powered by local Large Language Models (LLM) using **Ollama**, **LangChain**, and **Streamlit**.  
Upload any self-help book in PDF format and get clear, insightful summaries for each chapter — all running privately and locally (or on the deployed version).

**Live Demo**: https://huggingface.co/spaces/garvitakar26/self-help-book-summarizer

## 🚀 Features

- Upload PDF self-help books (e.g., *Atomic Habits*, *How to Win Friends and Influence People*, *The 7 Habits*, etc.)
- Smart chapter detection:
  - Uses embedded Table of Contents when available
  - Falls back to font-size analysis and heading detection for PDFs without TOC
- Chapter-wise summaries with:
  - Main theme
  - Key concepts & frameworks
  - Practical takeaways & action steps
  - Notable quotes/stories
- Full-book summary button
- 100% local inference using **Ollama** (no data leaves your machine on local run)
- Beautiful Streamlit web interface
- Docker support for easy deployment

## 🖥️ Tech Stack

- **Frontend/UI**: Streamlit
- **LLM Backend**: Ollama (with `phi3` for fast CPU inference)
- **Embeddings**: `nomic-embed-text`
- **RAG Pipeline**: LangChain + Chroma vector database
- **PDF Processing**: PyMuPDF (fitz)
- **Deployment**: Hugging Face Spaces (Docker)
