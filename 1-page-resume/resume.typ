#import "cv-theme.typ": *

#show: apply-theme

// One-page resume overrides on top of the CV theme.
#set document(title: "Mahdi Moghaddami | Resume", author: "Mahdi Moghaddami")
#set page(margin: (x: 40pt, y: 30pt), footer: none)
#set text(size: 10pt)
#set par(leading: 0.5em, spacing: 6pt)
#set list(spacing: 4.5pt)
#show heading.where(level: 1): set block(above: 8pt)

// ---------------------------------------------------------------- Header
#align(center)[
  #text(size: name-font-size, weight: "bold", fill: accent-color, font: body-font)[Mahdi Moghaddami]
  #v(1pt)
  #text(
    font: heading-font,
    size: 9.5pt,
    fill: muted,
  )[Ph.D. Candidate in Computer Science | Machine Learning and Applied AI]

  #text(size: 9.5pt)[
    Rochester Hills, MI | +1 (248) 270-5982 |
    #link("mailto:me@mahdimoghaddami.com")[me\@mahdimoghaddami.com] |
    #link("https://mahdimoghaddami.com")[mahdimoghaddami.com] \
    #link("https://linkedin.com/in/mahdimoghaddami")[linkedin.com/in/mahdimoghaddami] |
    #link("https://github.com/mahdimoghaddami")[github.com/mahdimoghaddami]
  ]
]

// ---------------------------------------------------------------- Education
= Education
#v(3pt)
#entry(
  [Oakland University],
  [May 2023 #sym.dash.en Dec 2027 (expected)],
  subtitle: [Ph.D. in Computer Science and Informatics (M.Sc. en route, Apr 2026) | GPA: 3.97/4.00],
  location: [Rochester Hills, MI],
)
#v(-2pt)
#entry(
  [Iran University of Science and Technology],
  [Sep 2016 #sym.dash.en Feb 2022],
  subtitle: [B.Sc. in Computer Engineering | GPA: 3.68/4.00],
  location: [Tehran, Iran],
)

// ---------------------------------------------------------------- Experience
= Experience
#v(3pt)
#entry(
  [Graduate Research Assistant],
  [May 2023 #sym.dash.en Present],
  subtitle: [Biomedical Imaging Lab, Oakland University],
  location: [Rochester Hills, MI],
)

- Engineered a containerized Slurm HPC pipeline for curation, QC, and FreeSurfer feature extraction of 5+ TB of multimodal neuroimaging data (3,218 time points, 1,322 subjects) for deep learning models. #tag("https://github.com/mahdimoghaddami/gnn-connectivity-matrix", "Code")
- Built a Transformer that predicts next-visit diagnosis from longitudinal records of 1,627 subjects, handling missing visits and features; achieved 82.4% accuracy, 87.4% balanced accuracy, and 0.920 mean AUC in 10-fold cross-validation (CHIL 2025).
- Designed a history-aware spatio-temporal GNN on rs-fMRI connectivity from 303 ADNI subjects (82.9% accuracy; SPIE 2026) and a GNN-Transformer on longitudinal diffusion MRI (80.3% balanced accuracy, 0.864 ROC-AUC; CVPR 2027 submission).
- Co-supervised two NSF REU undergraduates on Informer-based financial time-series forecasting; co-authored a poster.

#v(2pt)
#entry(
  [Machine Learning Engineer],
  [Jun 2021 #sym.dash.en Feb 2022],
  subtitle: [Dadmatech Corp.],
  location: [Tehran, Iran],
)

- Architected social-bot detection over 508 GB of raw data (10.1K Twitter, 7.7K Instagram accounts) with FastText, tsfresh, and multi-branch CNN-RNNs in PyTorch/Keras (0.77 Twitter F1; 91.8% Instagram accuracy); deployed via REST APIs.
- Extended a ParsBERT stance-detection model to a 28% larger dataset, raising F1 from 0.62/0.71 to 0.86/0.82 with focal loss, feature fusion, SMOTE/ADASYN ablations, and grid search.

// ---------------------------------------------------------------- Projects
= Selected Projects
#v(3pt)
#entry(
  [Multi-Agent AI Coach for Student Stress Management #tag("https://github.com/mahdimoghaddami/agentic-student-life", "Code") #tag(
      "https://github.com/mahdimoghaddami/agentic-student-life/blob/main/output/pdf/studentlife_coach_paper/studentlife_coach.pdf",
      "Report",
    )],
  [Fall 2026],
  subtitle: [Agentic AI, Oakland University],
)

- Built a 5-role multi-agent LLM coach (Planner, Analyst, Writer, Critic, Memory Manager) in Python (aisuite, Pydantic) with 8 time-bounded data tools, 8 reusable coaching skills, and persistent memory.
- Ran a 9-configuration ablation over 20 longitudinal cases: 100% decision agreement with human labels, 4.81/5 mean quality from an independent LLM judge (16 messages), and 0.267 mean absolute difference from blind human ratings.

#v(2pt)
#entry(
  [Text Summarization with Foundation Models #tag("https://github.com/mahdimoghaddami/ai_final_project", "Code") #tag(
      "https://huggingface.co/spaces/mahdimoghaddami/TextSummarizer",
      "Demo",
    )],
  [Winter 2026],
  subtitle: [Artificial Intelligence, Oakland University],
)

- Fine-tuned BART-base on 202,914 arXiv papers (ROUGE-1 0.3309) and benchmarked Longformer-LED (ROUGE-1 0.4531) against extractive baselines; deployed as a Gradio app on Hugging Face Spaces.

#v(2pt)
#entry(
  [Model Compression for Edge AI #tag("https://github.com/mahdimoghaddami/ModelCompression", "Code")],
  [Fall 2024],
  subtitle: [Deep Learning and Applications, Oakland University],
)

- Implemented CNN layers, optimizers, and losses from scratch in PyTorch (no `torch.nn`); combined distillation and pruning to cut nonzero parameters 92.9% (553,514 to 39,206), retaining 77.26% CIFAR-10 accuracy (teacher: 80.22%).

// ---------------------------------------------------------------- Publications
= Selected Publications
#v(6pt)

- *Moghaddami, M.*, Siadat, M.-R., Toma, A. T., Laming, C. P., and Fu, H. (2026). Predicting Alzheimer's disease progression using rs-fMRI and a history-aware graph neural network. _SPIE Medical Imaging_. #tag("https://doi.org/10.1117/12.3088066", "DOI") #tag("https://arxiv.org/abs/2604.06469", "arXiv")
- *Moghaddami, M.*, Schubring, C., and Siadat, M. (2025). Transformer model for Alzheimer's disease progression prediction using longitudinal visit sequences. _Conference on Health, Inference, and Learning (CHIL)_. SECS Best Graduate Paper nominee. #tag("https://proceedings.mlr.press/v287/moghaddami25a.html", "PMLR") #tag("https://arxiv.org/abs/2507.03899", "arXiv")

// ---------------------------------------------------------------- Skills
= Technical Skills
#v(6pt)
#grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  row-gutter: 5pt,
  [*Languages:*], [Python, C++, C\#, Rust, Bash, SQL],
  [*ML & Data:*],
  [PyTorch, Hugging Face Transformers, scikit-learn, Keras, NumPy, Pandas, Polars, SciPy, Matplotlib, Seaborn],

  [*LLM & Agents:*], [aisuite, Pydantic, agent orchestration, LLM-as-judge evaluation, Gradio],
  [*Tools:*], [Linux, Git, Docker, Slurm/HPC, Singularity/Apptainer, Conda, uv],
)
