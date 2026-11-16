#import "../CV/theme.typ": *;

#show: apply-theme.with(text-size: 9.5pt)

// Header
#align(center)[
  #text(name-size, weight: "bold", fill: accent-color)[Mahdi Moghaddami]\
  #v(0pt)
  #text(size: 9pt)[
    +1 (248) 270-5982 | #link("mailto:me@mahdimoghaddami.com")[me\@mahdimoghaddami.com] | Rochester Hills, MI\
    #link("https://mahdimoghaddami.com")[mahdimoghaddami.com] |
    #link("https://linkedin.com/in/mahdimoghaddami")[linkedin.com/in/mahdimoghaddami] |
    #link("https://github.com/mahdimoghaddami")[github.com/mahdimoghaddami]
  ]
]

#v(6pt)

#section("Education")
*Oakland University* #h(1fr) #text(size: date-font-size)[Rochester Hills, MI]\
PhD in Computer Science and Informatics (GPA: 3.97) #h(1fr) #text(size: date-font-size)[_Dec 2027 (expected)_]

*Iran University of Science and Technology* #h(1fr) #text(size: date-font-size)[Tehran, Iran]\
BSc in Computer Engineering (GPA: 3.68) #h(1fr) #text(size: date-font-size)[_Feb 2022_]

#v(section-distance)

#section("Experience")
*Graduate Researcher*, Oakland University #h(1fr) #text(size: date-font-size)[_May 2023 -- Present_]
- Developed and trained a graph neural network (GNN) combined with different recurrent neural networks (RNN, LSTM, GRU) for conversion detection on cognitive impairment using PyTorch, improving accuracy by 26%.
- Implemented a Transformer-based model to predict a subject's diagnosis at their next clinical visit using PyTorch, achieving 85% accuracy on 10-fold cross-validation.
- Led an NSF-funded (REU) team of undergraduate researchers in designing and implementing an Informer model for short-term time-series forecasting in financial markets.

*AI/Machine Learning Engineer*, Dadmatech Corp. #h(1fr) #text(size: date-font-size)[_Jun 2021 -- Feb 2022_]
- Processed 250 GB of multi-modal data using Python and a multi-GPU HPC cluster to build production-ready classification systems. Deployed the resulting classifiers as Docker containers.
- Implemented machine learning classification algorithms using Scikit-learn and PyTorch to classify bot/human accounts on Twitter and Instagram, achieving 76% accuracy.

*NLP Lab Member*, Iran University of Science and Technology #h(1fr) #text(size: date-font-size)[_Oct 2019 -- Aug 2020_]
- Fine-tuned various large language models (BERT, GPT) for stance classification to improve content moderation and user safety using Keras (TensorFlow backend), achieving an F1-score of 82%.


#v(section-distance)

#section("Selected Publications")
- *M. Moghaddami*, et al., "Graph Neural Networks Combined with Recurrent Architectures for Cognitive Impairment Progression Detection", _SPIE Medical Imaging_, 2026.

- *M. Moghaddami*, et al., "Transformer-Based Multi-Visit Diagnosis Prediction via Clinical Trajectory Modeling", _Conference on Health, Inference, and Learning (CHIL)_, 2025.

#v(section-distance)

#section("Selected Projects")

*Foundation Models: Text Summarization*, Natural Language Processing #h(1fr) #text(size: date-font-size)[_Winter 2025_]
- Architected and deployed an end-to-end text summarization tool using BART-base and Longformer-LED; managed the full lifecycle from model selection to public deployment on Hugging Face Spaces.

*Edge AI: High-Ratio Model Compression*, Deep Learning and Applications #h(1fr) #text(size: date-font-size)[_Fall 2024_]
- Built a CNN from scratch (all layers, optimizer, and loss function).
- Reduced CNN model size by 92% using pruning and knowledge distillation in PyTorch, with only 3% accuracy loss.

*Autonomous Navigation: Drone Control*, Machine Learning #h(1fr) #text(size: date-font-size)[_Winter 2024_]
- Developed a real-time ResNet-based 3D Path Planning and Perception pipeline for autonomous drone navigation, enabling continuous trajectory and speed optimization based on camera feeds.

#v(section-distance)

#section("Skills")
*Languages:* Python, C\#, C++, JavaScript

*Frameworks & Libraries:* PyTorch, Scikit-learn, Pandas, Polars, NumPy, Matplotlib, Seaborn, Keras, Hugging Face Transformers, SciPy

*Tools & Infrastructure:* Git, Docker, Linux, uv, Ruff, Conda
