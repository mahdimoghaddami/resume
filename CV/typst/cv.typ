#import "theme.typ": *

#show: apply-theme

// ---------------------------------------------------------------- Header
#align(center)[
  #text(size: name-font-size, weight: "bold", fill: accent-color, font: body-font)[Mahdi Moghaddami]
  #v(2pt)
  #text(
    font: heading-font,
    size: 9.5pt,
    fill: muted,
  )[Ph.D. Student in Computer Science | Machine Learning for Healthcare]

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
  [May 2023 - Dec 2027 (expected)],
  subtitle: [Ph.D. in Computer Science and Informatics],
  location: [Rochester Hills, MI],
)
GPA: 3.97/4.00 | Advisor: Dr. Mohammad-Reza Siadat

#entry(
  [Oakland University],
  [Apr 2026],
  subtitle: [M.Sc. in Computer Science (en route to Ph.D.)],
  location: [Rochester Hills, MI],
)
GPA: 4.00/4.00

#entry(
  [Iran University of Science and Technology],
  [Sep 2016 - Feb 2022],
  subtitle: [B.Sc. in Computer Engineering],
  location: [Tehran, Iran],
)
GPA: 3.68/4.00

// ---------------------------------------------------------------- Research
= Research Experience
#entry(
  [Graduate Research Assistant],
  [May 2023 - Present],
  subtitle: [Biomedical Imaging Lab, Oakland University],
  location: [Rochester Hills, MI],
)

- Co-developed a multimodal graph neural network and Transformer framework for longitudinal diffusion MRI, clinical, and biomarker data; achieved 78.8% balanced accuracy and 0.849 AUC across 337 evaluation windows (CVPR 2027 submission).

- Designed a history-aware graph neural network with recurrent encoders for rs-fMRI connectivity data from 303 ADNI subjects; achieved 82.9% overall accuracy and 68.8% accuracy on cognitively normal to mild cognitive impairment conversion (SPIE 2026).
  #tag("https://github.com/mahdimoghaddami/gnn-connectivity-matrix", "Code")

- Built a Transformer to predict next-visit diagnosis from longitudinal TADPOLE/ADNI records from 1,627 subjects, accommodating missing visits and features; achieved 82.4% accuracy, 87.4% balanced accuracy, and 0.920 mean AUC in 10-fold cross-validation (CHIL 2025).

- Built DICOM-to-BIDS data preparation and fMRIPrep/FreeSurfer preprocessing pipelines on an HPC cluster; investigated scanner-specific metadata issues and incomplete imaging series.

#entry(
  [Undergraduate Research Mentor],
  [Apr 2024 - Jul 2024],
  subtitle: [NSF Research Experiences for Undergraduates (REU), Oakland University],
  location: [Rochester Hills, MI],
)

- Co-supervised two undergraduate researchers with Dr. Mohammad-Reza Siadat on short-term financial time-series forecasting with an Informer model; guided model design and evaluation.

- Co-authored a research report and a poster presented at Michigan State University.

#entry(
  [Undergraduate Researcher],
  [Oct 2019 - Aug 2020],
  subtitle: [NLP Lab, Iran University of Science and Technology],
  location: [Tehran, Iran],
)

- Compared fine-tuned ParsBERT and multilingual BERT with LSTM-based approaches for Persian stance classification using Keras and Hugging Face Transformers.

- Studied focal loss and text preprocessing for class imbalance; achieved a peak validation F1-score of 0.82.

// Publications and professional experience begin on a fresh page.
#pagebreak()

// ---------------------------------------------------------------- Publications
= Publications

== Published

- #block(breakable: false)[*Moghaddami, M.*, Siadat, M.-R., Toma, A. T., Laming, C. P., and Fu, H. (2026).
    Predicting Alzheimer's disease progression using rs-fMRI and a history-aware graph neural network.
    _Medical Imaging 2026: Computer-Aided Diagnosis_, Proceedings of SPIE, vol. 13926, 1392604.
    #tag("https://doi.org/10.1117/12.3088066", "DOI") #tag("https://arxiv.org/abs/2604.06469", "arXiv") #tag(
      "https://github.com/austinttoma/STGNN",
      "Code",
    )]

- #block(breakable: false)[*Moghaddami, M.*, Schubring, C., and Siadat, M. (2025).
    Transformer model for Alzheimer's disease progression prediction using longitudinal visit sequences.
    _Proceedings of the Sixth Conference on Health, Inference, and Learning (CHIL)_, PMLR 287, pp. 804-816.
    #tag("https://proceedings.mlr.press/v287/moghaddami25a.html", "PMLR") #tag(
      "https://arxiv.org/abs/2507.03899",
      "arXiv",
    ) #tag("https://github.com/mahdimoghaddami/ad-visit-sequences", "Code")]

== Under Review
- #block(breakable: false)[
    *Moghaddami, M.*, Piggott, B., and Siadat, M.-R. (2026).
    History-aware connectome learning for Alzheimer's disease progression prediction from longitudinal diffusion MRI.
    _Under review at the IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR 2027)_.
    #tag("https://github.com/mahdimoghaddami/dti-connectivity", "Code")
  ]

== Posters
- #block(breakable: false)[
    *Moghaddami, M.*, Siadat, M.-R., and Babajani-Feremi, A. (2023).
    Comparative study of cognitive impairment modeling for Alzheimer's disease - longitudinal vs. cross-sectional.
    _IEEE-EMBS International Conference on Biomedical and Health Informatics (BHI)_, Poster presentation.
    #tag("https://mahdimoghaddami.com/files/bhi-23.pdf", "PDF") #tag(
      "https://mahdimoghaddami.com/files/bhi-poster.pdf",
      "Poster",
    )
  ]

// ---------------------------------------------------------------- Industry
= Industry Experience
#entry([Machine Learning Engineer], [Jun 2021 - Feb 2022], subtitle: [Dadmatech Corp.], location: [Tehran, Iran])
- Processed 250 GB of multimodal data with Python on a multi-GPU HPC cluster; deployed the resulting classifiers as Docker containers.
- Built Twitter and Instagram bot detection models (AdaBoost, random forests, multilayer perceptrons) with scikit-learn and PyTorch; achieved 76% accuracy.

#entry(
  [Front-End Web Development Intern],
  [May 2019 - Aug 2019],
  subtitle: [Avid Net Technology],
  location: [Tehran, Iran],
)
- Built a company website with Angular and OpenStreetMap to display where farm IoT devices were transmitting signals and the associated signal data.

// ---------------------------------------------------------------- Teaching
= Teaching Experience
#entry([Teaching Assistant], [2023 - 2025], subtitle: [Oakland University], location: [Rochester Hills, MI])
#course-list((
  (
    [
      - Visual Computing:
        - #text(
            size: subtitle-font-size,
          )[Authored a PyTorch/ResNet-18 laboratory assignment on image processing and CNN evaluation for graduate Visual Computing (CSI 5550). #tag("https://github.com/mahdimoghaddami/cnn-signal-sensitivity", "Code") #tag(
              "https://github.com/mahdimoghaddami/cnn-signal-sensitivity/blob/main/docs/latex/assignment.pdf",
              "PDF",
            )]
    ],
    [Fall 2026, Fall 2023],
  ),
  ([- Software Security], [Winter 2026]),
  ([- Deep Learning and Applications], [Fall 2026]),
  ([- Design and Analysis of Algorithms], [Summer 2025, Winter 2025]),
  ([- Object-Oriented Programming], [Winter 2025]),
  ([- Information Security], [Summer 2024]),
  ([- Introduction to Unix and C Programming], [Summer 2023; Fall 2023]),
))

#entry(
  [Teaching Assistant],
  [2019 - 2020],
  subtitle: [Iran University of Science and Technology],
  location: [Tehran, Iran],
)
#course-list((
  ([- Algorithm Analysis and Design], [Spring 2020]),
  ([- Data Structures], [Fall 2019]),
  ([- Foundations of Computers and Programming (Python)], [Fall 2019]),
  ([- Advanced Computer Programming (C\#)], [Spring 2019]),
))

// Projects and supporting qualifications begin on a fresh page.
#pagebreak()

// ---------------------------------------------------------------- Projects
= Selected Projects
#entry(
  [Multi-Agent AI Coach for Student Stress Management],
  [Fall 2026],
  subtitle: [Agentic AI, Oakland University | Team of two],
)
- Led data preprocessing, temporally bounded sensing and academic tools, orchestration, and experiment automation for a training-free five-agent LLM coaching system. Incorporated reflection, plannning, memory management, and skills in agents.
- Evaluated 9 configurations on 20 offline cases from 8 StudentLife identifiers with simulated goals and feedback; the full system received a mean LLM-judge score of 4.81/5 on 16 messages.
  #tag("https://github.com/mahdimoghaddami/agentic-student-life", "Code") #tag(
    "https://github.com/mahdimoghaddami/agentic-student-life/blob/main/output/pdf/studentlife_coach_paper/studentlife_coach.pdf",
    "Report",
  )

#entry(
  [Text Summarization with Foundation Models],
  [Winter 2026],
  subtitle: [Artificial Intelligence, Oakland University],
)
- Fine-tuned BART-base on 202,914 arXiv training papers; achieved ROUGE-1 of 0.3309 on 6,440 test papers.
- Benchmarked pretrained Longformer-LED and extractive baselines; LED achieved ROUGE-1 of 0.4531 and ROUGE-L of 0.2673. Deployed all four summarizers through an interactive Gradio app on Hugging Face Spaces.
  #tag("https://github.com/mahdimoghaddami/ai_final_project", "Code") #tag(
    "https://huggingface.co/spaces/mahdimoghaddami/TextSummarizer",
    "Demo",
  )

#entry([Model Compression for Edge AI], [Fall 2024], subtitle: [Deep Learning and Applications, Oakland University])
- Implemented custom CNN layers, optimizers, and loss functions in PyTorch, then combined knowledge distillation and magnitude pruning on CIFAR-10.
// Results follow the final report's evaluation table, rather than intermediate notebook runs.
- Reduced the nonzero parameter count by 92.9% (553,514 to 39,206); retained 77.26% test accuracy, 2.96 percentage points below the teacher model's 80.22%.
  #tag("https://github.com/mahdimoghaddami/ModelCompression", "Code")

#entry([Deep Learning for Autonomous Drone Navigation], [Winter 2024], subtitle: [Machine Learning, Oakland University])
- Implemented and trained a DroNet residual CNN to predict steering angle and collision probability from camera images.
- Achieved 95.3% collision-classification accuracy (0.895 F1) and 0.181 steering RMSE; integrated the model with drone control and tested navigation on a physical drone.
  #tag("https://github.com/mahdimoghaddami/autonomous-drone-navigation", "Code")

// ---------------------------------------------------------------- Skills
= Technical Skills
#v(paragraph-spacing)
#grid(
  columns: (auto, 1fr),
  column-gutter: paragraph-spacing * 1.5,
  row-gutter: paragraph-spacing,
  [*Machine learning:*], [PyTorch, Hugging Face Transformers, scikit-learn, Keras, NLTK, Gensim, Gradio],
  [*Data & visualization:*], [NumPy, Pandas, Polars, SciPy, Matplotlib, Seaborn],
  [*Programming:*], [Python, C\#, C++, Rust, Bash],
  [*Tools & neuroimaging:*],
  [Linux, Git, Docker, HPC clusters, Slurm, Singularity/Apptainer, Conda, uv, fMRIPrep, FreeSurfer],
)

// ---------------------------------------------------------------- Honors
= Honors and Awards
#v(paragraph-spacing)
- Nominee, School of Engineering and Computer Science (SECS) Best Graduate Paper Award, Oakland University (2025), for CHIL 2025.

- First place among 32 teams, IUST Chillin Wars AI programming competition (2019).

- Top Student of the Year award, Department of Computer Engineering, IUST.

- Ranked in the top 0.5% of more than 150,000 participants in Iran's national university entrance examination (2016).

// ---------------------------------------------------------------- Languages
= Languages
#v(paragraph-spacing)
*English:* Fluent #h(12pt) *Azerbaijani:* Native #h(12pt) *Persian:* Native #h(12pt) *Turkish:* Fluent #h(12pt) *Japanese:* Intermediate
