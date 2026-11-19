#import "cv-theme.typ": *

#show: apply-theme

// ---------------------------------------------------------------- Header
#align(center)[
  #text(size: name-font-size, weight: "bold", fill: accent-color, font: body-font)[Mahdi Moghaddami]
  #v(2pt)
  #text(
    font: heading-font,
    size: 9.5pt,
    fill: muted,
  )[Ph.D. Student in Computer Science | Machine Learning and Applied AI]

  #text(size: 10pt)[
    Rochester Hills, MI | +1 (248) 270-5982 |
    #link("mailto:me@mahdimoghaddami.com")[me\@mahdimoghaddami.com]\
    #link("https://mahdimoghaddami.com")[mahdimoghaddami.com] |
    #link("https://linkedin.com/in/mahdimoghaddami")[linkedin.com/in/mahdimoghaddami] |
    #link("https://github.com/mahdimoghaddami")[github.com/mahdimoghaddami]
  ]
]

#v(line-spacing)

// ---------------------------------------------------------------- Interests
= Research Interests
// #v(line-spacing)
#v(paragraph-spacing)
Machine learning for healthcare, longitudinal and multimodal disease progression modeling,
graph neural networks, natural language processing, agentic AI systems.

// ---------------------------------------------------------------- Education
= Education
#entry(
  [Oakland University],
  [May 2023 #sym.dash.en Dec 2027 (expected)],
  subtitle: [Ph.D. in Computer Science and Informatics | GPA: 3.97/4.00],
  location: [Rochester Hills, MI],
)

#v(paragraph-spacing * 0.5)

#entry(
  [Oakland University],
  [Apr 2026],
  subtitle: [M.Sc. in Computer Science (en route to Ph.D.) | GPA: 4.00/4.00],
  location: [Rochester Hills, MI],
)

#v(paragraph-spacing * 0.5)

#entry(
  [Iran University of Science and Technology],
  [Sep 2016 #sym.dash.en Feb 2022],
  subtitle: [B.Sc. in Computer Engineering | GPA: 3.68/4.00],
  location: [Tehran, Iran],
)

// ---------------------------------------------------------------- Research
= Research Experience
#entry(
  [Graduate Research Assistant],
  [May 2023 #sym.dash.en Present],
  subtitle: [Biomedical Imaging Lab, Oakland University],
  location: [Rochester Hills, MI],
)

- Engineered a distributed, containerized Slurm HPC pipeline for curation, QC, slice-timing recovery, and FreeSurfer feature extraction of 5+ TB of resting-state fMRI (rs-fMRI) and T1-weighted neuroimaging data (3,218 time points, 1,322 subjects) for downstream deep learning models. #tag("https://github.com/mahdimoghaddami/gnn-connectivity-matrix", "Code")

- Architected History-Aware Connectome Learning (HACL) in PyTorch, a multimodal GNN-Transformer for longitudinal diffusion MRI and clinical histories; a 19-configuration ablation and log-odds ensembling raised 5-fold participant-grouped balanced accuracy from 70.9% to 80.3% (0.864 ROC-AUC) across 340 windows from 122 ADNI subjects (CVPR 2027 - under review). #tag("https://github.com/mahdimoghaddami/dti-connectivity", "Code")

- Designed a history-aware spatio-temporal GNN with recurrent encoders for rs-fMRI connectivity data from 303 ADNI subjects; achieved 82.9% overall accuracy and 68.8% accuracy on cognitively normal to mild cognitive impairment conversion (SPIE 2026). #tag(
    "https://github.com/austinttoma/STGNN",
    "Code",
  )

- Developed a Transformer for next-visit diagnosis from incomplete longitudinal histories of 1,627 participants; evaluated against recurrent baselines and achieved 87.4% balanced accuracy and and 92% mean AUC in 10-fold cross-validation (CHIL 2025). #tag("https://github.com/mahdimoghaddami/transformer-visit-sequences", "Code")


#v(paragraph-spacing * 0.5)

#entry(
  [Undergraduate Research Mentor],
  [Apr 2024 #sym.dash.en Jul 2024],
  subtitle: [NSF Research Experiences for Undergraduates (REU), Oakland University],
  location: [Rochester Hills, MI],
)

- Supervised two undergraduate researchers on short-term financial time-series forecasting with an Informer model, guiding data collection, model design, and evaluation; co-authored a research report and a poster presented at Michigan State University.

#v(paragraph-spacing * 0.5)

#entry(
  [Undergraduate Researcher],
  [Oct 2019 #sym.dash.en Aug 2020],
  subtitle: [NLP Lab, Iran University of Science and Technology],
  location: [Tehran, Iran],
)

- Built 4-class Persian stance detection models (Claim-Headline and Claim-Article) for fake news verification in TensorFlow/Keras and Hugging Face Transformers; compared fine-tuned ParsBERT against StackLSTM, Multilingual BERT, scikit-learn (AdaBoost, random forests, MLPs), and PyTorch LSTM baselines, raising 80/20 validation accuracy from 62% to 81.3% (2,029 headline pairs) and 72% to 83.8% (1,997 article pairs).

// Publications and professional experience begin on a fresh page.
#pagebreak()

// ---------------------------------------------------------------- Publications
= Publications

== Published

- #block(breakable: false)[*Moghaddami, M.*, Siadat, M.-R., Toma, A. T., Laming, C. P., and Fu, H. (2026).
    Predicting Alzheimer's disease progression using rs-fMRI and a history-aware graph neural network.
    _Medical Imaging 2026: Computer-Aided Diagnosis_, Proceedings of SPIE, vol. 13926, 1392604.
    #tag("https://doi.org/10.1117/12.3088066", "DOI") #tag("https://arxiv.org/abs/2604.06469", "arXiv")]

- #block(breakable: false)[*Moghaddami, M.*, Schubring, C., and Siadat, M. (2025).
    Transformer model for Alzheimer's disease progression prediction using longitudinal visit sequences.
    _Proceedings of the Sixth Conference on Health, Inference, and Learning (CHIL)_, PMLR 287, pp. 804#text()[#sym.dash.en]816.
    #tag("https://proceedings.mlr.press/v287/moghaddami25a.html", "PMLR") #tag(
      "https://arxiv.org/abs/2507.03899",
      "arXiv",
    )]

#v(paragraph-spacing * 0.5)

== Under Review
- #block(breakable: false)[
    *Moghaddami, M.*, Piggott, B., and Siadat, M.-R. (2026).
    History-aware connectome learning for Alzheimer's disease progression prediction from longitudinal diffusion MRI.
    _Under review at the IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR 2027)_.
  ]

#v(paragraph-spacing * 0.5)

== Posters
- #block(breakable: false)[
    *Moghaddami, M.*, Siadat, M.-R., and Babajani-Feremi, A. (2023).
    Comparative study of cognitive impairment modeling for Alzheimer's disease #sym.dash.en longitudinal vs. cross-sectional.
    _IEEE-EMBS International Conference on Biomedical and Health Informatics (BHI)_.
    #tag("https://mahdimoghaddami.com/files/bhi-23.pdf", "PDF") #tag(
      "https://mahdimoghaddami.com/files/bhi-poster.pdf",
      "Poster",
    )
  ]

- #block(breakable: false)[
    Chunn, J., Keefer, I., Siadat, M., and *Moghaddami, M.* (2024). Profit Maximization In Short-Term Financial Instrument Trading with Transformer Value Forecasting. _Mid-Michigan Symposium for Undergraduate Research Experience (MidSURE)_. #tag("https://mahdimoghaddami.com/files/ai-trading-paper.pdf", "PDF") #tag(
      "https://mahdimoghaddami.com/files/ai-trading-poster.pdf",
      "Poster",
    )
  ]

// ---------------------------------------------------------------- Industry
= Industry Experience
#entry(
  [Machine Learning Engineer],
  [Jun 2021 #sym.dash.en Feb 2022],
  subtitle: [Dadmatech Corp.],
  location: [Tehran, Iran],
)
- Extended the ParsBERT stance-detection model to a 28% larger dataset, raising F1 from 0.62/0.71 to 0.86/0.82 (headline/article-to-claim) with a custom Keras categorical focal loss, handcrafted feature fusion, SMOTE/ADASYN class-imbalance ablations, and grid searches over (#sym.alpha, #sym.gamma), optimizers, and sequence lengths.

- Architected cross-platform social-bot detection over 508 GB of raw data (10.1K Twitter, 7.7K Instagram accounts) using FastText embeddings, tsfresh time-series features, PyTorch/Keras multi-branch CNN-RNNs, and GridSearch-tuned ensembles (0.77 Twitter F1; 91.8% Instagram accuracy); deployed inference via REST APIs.

#v(paragraph-spacing * 0.5)

#entry(
  [Front-End Web Development Intern],
  [May 2019 #sym.dash.en Aug 2019],
  subtitle: [Avid Net Technology],
  location: [Tehran, Iran],
)
- Built a company website with Angular and OpenStreetMap to display where farm IoT devices were transmitting signals and the associated signal data.

// ---------------------------------------------------------------- Teaching
= Teaching Experience
#entry(
  [Teaching Assistant],
  [2023 #sym.dash.en Present],
  subtitle: [Oakland University],
  location: [Rochester Hills, MI],
)

- TA for 7 courses including Visual Computing and Deep Learning and Applications; held office hours, graded and designed assignments, and assisted with labs and exams.

- Authored a PyTorch/ResNet-18 laboratory assignment on image processing and CNN evaluation for graduate Visual Computing (CSI 5550). #tag("https://github.com/mahdimoghaddami/cnn-signal-sensitivity", "Code") #tag(
    "https://github.com/mahdimoghaddami/cnn-signal-sensitivity/blob/main/docs/latex/assignment.pdf",
    "PDF",
  )

#v(paragraph-spacing * 0.5)

#entry(
  [Teaching Assistant],
  [2019 #sym.dash.en 2020],
  subtitle: [Iran University of Science and Technology],
  location: [Tehran, Iran],
)

- TA for 4 courses: Data Structures, Algorithm Analysis and Design, Foundations of Computers and Programming (Python), and Advanced Computer Programming (C\#).

// Projects and supporting qualifications begin on a fresh page.
#pagebreak()

// ---------------------------------------------------------------- Projects
= Selected Projects
#entry(
  [Multi-Agent AI Coach for Student Stress Management #tag("https://github.com/mahdimoghaddami/agentic-student-life", "Code") #tag("https://github.com/mahdimoghaddami/agentic-student-life/blob/main/output/pdf/studentlife_coach_paper/studentlife_coach.pdf", "Report")],
  [Fall 2026],
  subtitle: [Agentic AI, Oakland University],
)
- Built a 5-role multi-agent LLM stress coach (Planner, Analyst, Writer, Critic, Memory Manager) in Python (aisuite, Pydantic, Gemini 3.6 Flash) on the StudentLife dataset, integrating 8 leak-free, time-bounded data/resource tools, 8 reusable coaching skills, planning, reflection, and persistent preference memory.

- Ran a 9-configuration ablation across 20 longitudinal cases (8 participants) with simulated goals and feedback: 100% decision agreement (20/20) with manual labels, 4.81/5 mean quality across 16 sent messages from an independent GPT-5.4-mini judge, and 0.267 mean absolute difference from blind human ratings (1-5 scale).


#v(paragraph-spacing * 0.5)

#entry(
  [Text Summarization with Foundation Models #tag("https://github.com/mahdimoghaddami/ai_final_project", "Code") #tag(
      "https://huggingface.co/spaces/mahdimoghaddami/TextSummarizer",
      "Demo",
    )],
  [Winter 2026],
  subtitle: [Artificial Intelligence, Oakland University],
)
- Fine-tuned BART-base on 202,914 arXiv training papers; achieved ROUGE-1 of 0.3309 on 6,440 test papers.
- Benchmarked pretrained Longformer-LED and two extractive baselines; LED achieved ROUGE-1 of 0.4531 and ROUGE-L of 0.2673. Deployed models on Hugging Face Spaces as an interactive Gradio app.

#v(paragraph-spacing * 0.5)

#entry(
  [Model Compression for Edge AI #tag("https://github.com/mahdimoghaddami/ModelCompression", "Code")],
  [Fall 2024],
  subtitle: [Deep Learning and Applications, Oakland University],
)
- Implemented custom CNN layers, optimizers, and loss functions in PyTorch from scratch (no `torch.nn` layers), then combined knowledge distillation and pruning on CIFAR-10.
// Results follow the final report's evaluation table, rather than intermediate notebook runs.
- Reduced the nonzero parameter count by 92.9% (553,514 to 39,206); retained 77.26% test accuracy, 2.96 percentage points below the teacher model's 80.22%.

#v(paragraph-spacing * 0.5)

#entry(
  [Deep Learning for Autonomous Drone Navigation #tag("https://github.com/mahdimoghaddami/autonomous-drone-navigation", "Code")],
  [Winter 2024],
  subtitle: [Machine Learning, Oakland University],
)
- Trained a lightweight 8-layer residual CNN (resnet8) in TensorFlow/Keras on \~33.8k cross-domain car-driving and bicycle-mounted images to jointly predict steering angle and collision probability with dynamically scheduled loss weighting; achieved 95.3% collision accuracy (0.895 F1) and 0.181 steering RMSE.

- Built a low-latency ROS (Python/C++) closed loop turning live 200$times$200 grayscale Parrot Bebop camera frames into low-pass-filtered velocity and yaw commands; validated obstacle avoidance in indoor and outdoor tests.

// ---------------------------------------------------------------- Skills
= Technical Skills
#v(paragraph-spacing)
#grid(
  columns: (auto, 1fr),
  column-gutter: paragraph-spacing * 1.5,
  row-gutter: paragraph-spacing,
  [*Machine Learning:*], [PyTorch, Hugging Face Transformers, scikit-learn, Keras, NLTK, Gensim],
  [*Data & Visualization:*], [NumPy, Pandas, Polars, SciPy, Matplotlib, Seaborn],
  [*Programming:*], [Python, C\#, C++, Rust, Bash, SQL],
  [*Tools & Neuroimaging:*],
  [Linux, Git, Docker, HPC clusters, Slurm, Singularity/Apptainer, Conda, uv, Gradio, fMRIPrep, FreeSurfer],

  [*LLM & Agents:*], [aisuite, Pydantic, agent orchestration, LLM-as-judge evaluation],
)

// ---------------------------------------------------------------- Honors
= Honors and Awards
#v(paragraph-spacing)
- Nominee, School of Engineering and Computer Science (SECS) Best Graduate Paper Award, Oakland University (2025), for CHIL 2025.

- First place among 32 teams, IUST Chillin Wars AI programming competition (2019).

- Top Student of the Year award, Department of Computer Engineering, IUST (2018).

- Ranked in the top 0.5% of more than 150,000 participants in Iran's national university entrance examination (2016).

// ---------------------------------------------------------------- Languages
= Languages
#v(paragraph-spacing)
*English:* Fluent #h(12pt) *Azerbaijani:* Native #h(12pt) *Persian:* Native #h(12pt) *Turkish:* Fluent #h(12pt) *Japanese:* Intermediate
