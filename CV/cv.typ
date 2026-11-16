#import "theme.typ": accent-color

// Standalone CV layout. The shared one-page resume theme is left intact.
#let muted = rgb("555555")

#let cv-style(body) = {
  set document(title: "Mahdi Moghaddami | Curriculum Vitae", author: "Mahdi Moghaddami")
  set page(
    paper: "us-letter",
    margin: (x: 46pt, top: 38pt, bottom: 42pt),
    footer: context {
      set text(size: 8pt, fill: rgb("777777"))
      grid(
        columns: (1fr, auto),
        [Mahdi Moghaddami | Curriculum Vitae], counter(page).display("1 / 1", both: true),
      )
    },
    footer-descent: 16pt,
  )
  set text(font: "New Computer Modern", size: 9.75pt, fill: rgb("202020"))
  set par(leading: 0.52em, spacing: 5.5pt)
  set list(indent: 8pt, body-indent: 5pt, spacing: 3.5pt, marker: text(fill: accent-color, sym.bullet))
  set enum(indent: 0pt, body-indent: 6pt, spacing: 5.5pt)
  set heading(numbering: none)
  show heading.where(level: 1): it => block(above: 12pt, below: 6pt, sticky: true, stack(
    spacing: 3pt,
    text(size: 10.5pt, weight: "bold", fill: accent-color, tracking: 0.6pt, upper(it.body)),
    line(length: 100%, stroke: 0.5pt + accent-color),
  ))
  body
}

// Entry header: title | date on the first line, subtitle | location on the second.
#let entry(title, date, subtitle: none, location: none) = block(
  above: 8.5pt,
  below: 3.5pt,
  breakable: false,
  sticky: true,
)[
  #grid(
    columns: (1fr, auto),
    column-gutter: 12pt,
    row-gutter: 3pt,
    align: (left, right),
    strong(title), text(size: 9pt, date),
    ..if subtitle != none or location != none {
      (
        text(size: 9.25pt, style: "italic", fill: muted, if subtitle != none { subtitle }),
        text(size: 8.75pt, style: "italic", fill: muted, if location != none { location }),
      )
    },
  )
]

// Small bracketed link tag, e.g. [Code] or [Demo].
#let tag(url, label) = link(url, text(size: 8.75pt, fill: accent-color)[\[#label\]])

#show: cv-style

// ---------------------------------------------------------------- Header
#align(center)[
  #text(size: 22pt, weight: "bold", fill: accent-color)[Mahdi Moghaddami]
  #v(1pt)
  #text(size: 9.75pt, fill: muted)[Ph.D. Student in Computer Science | Machine Learning for Healthcare]
  #v(1pt)
  #text(size: 9.25pt)[
    Rochester Hills, MI | +1 (248) 270-5982 |
    #link("mailto:me@mahdimoghaddami.com")[me\@mahdimoghaddami.com]\
    #link("https://mahdimoghaddami.com")[mahdimoghaddami.com] |
    #link("https://linkedin.com/in/mahdimoghaddami")[linkedin.com/in/mahdimoghaddami] |
    #link("https://github.com/mahdimoghaddami")[github.com/mahdimoghaddami]
  ]
]

// ---------------------------------------------------------------- Interests
= Research Interests
Machine learning for healthcare; longitudinal and multimodal representation learning;
graph neural networks; Transformers for sequential and time-series data; natural language processing; agentic AI systems.

// ---------------------------------------------------------------- Education
= Education
#entry(
  [Oakland University],
  [May 2023 -- Dec 2027 (expected)],
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
GPA: 4.00/4.00 | Thesis: _Deep Learning Methods for Predicting Alzheimer's Disease Progression: Transformer and Graph Neural Network Approaches_

#entry(
  [Iran University of Science and Technology],
  [Sep 2016 -- Feb 2022],
  subtitle: [B.Sc. in Computer Engineering],
  location: [Tehran, Iran],
)
GPA: 3.68/4.00

// ---------------------------------------------------------------- Publications
// Titles, author order, and venue details checked against OpenReview, PMLR, SPIE, arXiv, and BHI poster.
= Publications
#v(2pt)
1. Piggott, B., *Moghaddami, M.*, and Siadat, M.-R. (2026).
  History-aware connectome learning for Alzheimer's disease progression prediction from longitudinal diffusion MRI.
  _Under review at IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR 2027)_.
  #tag("https://openreview.net/forum?id=LPMgbw7uK2", "OpenReview")
2. *Moghaddami, M.*, Siadat, M.-R., Toma, A. T., Laming, C. P., and Fu, H. (2026).
  Predicting Alzheimer's disease progression using rs-fMRI and a history-aware graph neural network.
  _Medical Imaging 2026: Computer-Aided Diagnosis_, Proceedings of SPIE, vol. 13926, 1392604.
  #tag("https://doi.org/10.1117/12.3088066", "DOI") #tag("https://arxiv.org/abs/2604.06469", "arXiv")
3. *Moghaddami, M.*, Schubring, C., and Siadat, M. (2025).
  Transformer model for Alzheimer's disease progression prediction using longitudinal visit sequences.
  _Proceedings of the Sixth Conference on Health, Inference, and Learning (CHIL)_, PMLR 287, pp. 804--816.
  #tag("https://proceedings.mlr.press/v287/moghaddami25a.html", "PMLR") #tag("https://arxiv.org/abs/2507.03899", "arXiv")
4. *Moghaddami, M.*, Siadat, M.-R., and Babajani-Feremi, A. (2023).
  Comparative study of cognitive impairment modeling for Alzheimer's disease -- longitudinal vs. cross-sectional.
  _IEEE-EMBS International Conference on Biomedical and Health Informatics (BHI)_, Poster presentation.
5. *Moghaddami, M.*, Siadat, M.-R., et al.
  Comparative study of cognitive impairment modeling for Alzheimer's disease: longitudinal vs. cross-sectional.
  _Journal manuscript in preparation_.

// ---------------------------------------------------------------- Research
= Research Experience
#entry(
  [Graduate Research Assistant],
  [May 2023 -- Present],
  subtitle: [Biomedical Imaging Lab, Oakland University],
  location: [Rochester Hills, MI],
)
- Co-developed a multimodal framework fusing longitudinal diffusion MRI connectomes (AAL116 graphs with weighted GraphSAGE and temporal self-attention) and structured clinical/biomarker data (FT-Transformer) via gated late fusion; achieved 0.788 balanced accuracy, 0.849 AUC, and 0.539 progression-class F1 on 337 evaluation windows (under review at CVPR 2027).
- Designed a history-aware graph neural network coupling rs-fMRI functional connectivity graphs (303 ADNI subjects) with recurrent encoders (RNN, LSTM, GRU) in PyTorch; achieved 82.9% accuracy overall and 68.8% on CN-to-MCI conversion (SPIE 2026); built scalable BIDS/fMRIPrep/FreeSurfer pipelines on multi-GPU HPC.
  #tag("https://github.com/mahdimoghaddami/gnn-connectivity-matrix", "Code")
- Built a Transformer on 1,627 TADPOLE/ADNI subjects to predict next-visit clinical diagnosis under missing visits and incomplete features; achieved 82.4% accuracy, 0.874 BCA, and 0.920 mAUC on 10-fold CV, outperforming GRU, LSTM, and minRNN baselines (CHIL 2025).

#entry(
  [Undergraduate Research Mentor],
  [Apr 2024 -- Jul 2024],
  subtitle: [NSF Research Experiences for Undergraduates (REU), Oakland University],
  location: [Rochester Hills, MI],
)
- Co-supervised two undergraduate researchers with Dr. Mohammad-Reza Siadat on short-term financial time-series forecasting with an Informer model; guided model design and evaluation and co-authored a research report and poster presented at Michigan State University.

#entry(
  [Undergraduate Researcher],
  [Oct 2019 -- Aug 2020],
  subtitle: [NLP Lab, Iran University of Science and Technology],
  location: [Tehran, Iran],
)
- Built a Persian stance classification system for fake news detection by fine-tuning ParsBERT and multilingual BERT with LSTM layers and focal loss for class imbalance (Keras, Hugging Face Transformers); achieved an 82% F1-score.

// ---------------------------------------------------------------- Industry
= Industry Experience
#entry([Machine Learning Engineer], [Jun 2021 -- Feb 2022], subtitle: [Dadmatech Corp.], location: [Tehran, Iran])
- Processed 250 GB of multimodal data with Python on a multi-GPU HPC cluster; deployed the resulting classifiers as Docker containers.
- Built Twitter and Instagram bot detection models (AdaBoost, random forests, multilayer perceptrons) with scikit-learn and PyTorch; achieved 76% accuracy.

#entry(
  [Front-End Web Development Intern],
  [May 2019 -- Aug 2019],
  subtitle: [Avid Net Technology],
  location: [Tehran, Iran],
)

// ---------------------------------------------------------------- Projects
= Selected Projects
#entry(
  [Multi-Agent AI Coach for Student Stress Management],
  [Fall 2026],
  subtitle: [Agentic AI, Oakland University | Team of two],
)
- Co-developed a training-free five-agent LLM coaching system (Planner, Context Analyst, Message Writer, Critic, Memory Manager) on 49 participants from the Dartmouth StudentLife smartphone sensing dataset, with leak-free temporal views, tool use, reflection, persistent preference memory, and skills.
  #tag("https://github.com/mahdimoghaddami/agentic-student-life", "Code")

#entry(
  [Text Summarization with Foundation Models],
  [Winter 2026],
  subtitle: [Artificial Intelligence, Oakland University],
)
- Fine-tuned BART-base and evaluated Longformer-LED (ROUGE-1 0.4531, ROUGE-L 0.2673) against extractive baselines on 215k arXiv papers; deployed an interactive Gradio app on Hugging Face Spaces.
  #tag("https://github.com/mahdimoghaddami/ai_final_project", "Code") #tag("https://huggingface.co/spaces/mahdimoghaddami/TextSummarizer", "Demo")

#entry([Model Compression for Edge AI], [Fall 2024], subtitle: [Deep Learning and Applications, Oakland University])
- Implemented a CNN from scratch (layers, optimizer, loss), then applied pruning and knowledge distillation in PyTorch to cut model size by 92% with under a 3-point drop in test accuracy.
  #tag("https://github.com/mahdimoghaddami/ModelCompression", "Code")

#entry([Deep Learning for Autonomous Drone Navigation], [Winter 2024], subtitle: [Machine Learning, Oakland University])
- Developed a ResNet-based perception and control pipeline that predicts drone speed and heading from camera frames; deployed it on a physical drone navigating a maze.

// ---------------------------------------------------------------- Teaching
= Teaching Experience
#entry([Teaching Assistant], [2023 -- 2025], subtitle: [Oakland University], location: [Rochester Hills, MI])
Design and Analysis of Algorithms (W25); Object-Oriented Programming (W25); Information Security (S24);
Visual Computing (F23); Introduction to Unix and C Programming (S23, F23).

#entry(
  [Teaching Assistant],
  [2019 -- 2020],
  subtitle: [Iran University of Science and Technology],
  location: [Tehran, Iran],
)
Algorithm Analysis and Design (Sp20); Data Structures (F19); Foundations of Computers and Programming in Python (F19);
Advanced Computer Programming in C\# (Sp19).

// ---------------------------------------------------------------- Skills
= Technical Skills
#grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  row-gutter: 5.5pt,
  [*Machine learning:*], [PyTorch, Hugging Face Transformers, scikit-learn, Keras, NLTK, Gensim, Gradio],
  [*Models & paradigms:*], [Transformers, GNNs (GraphSAGE), RNN/LSTM/GRU, CNNs, FT-Transformer, BERT/BART/LED, agentic AI],
  [*Data & visualization:*], [NumPy, Pandas, Polars, SciPy, Matplotlib, Seaborn],
  [*Programming:*], [Python, C++, C, C\#, Java, JavaScript, SQL, Bash],
  [*Tools & neuroimaging:*], [Git, Docker, Linux, multi-GPU HPC clusters, Conda, uv, Ruff, fMRIPrep, FreeSurfer],
)

// ---------------------------------------------------------------- Honors
= Honors and Awards
- Nominee, School of Engineering and Computer Science (SECS) Best Graduate Paper Award, Oakland University (2025), for CHIL 2025.
- First place among 32 teams, IUST Chillin Wars AI programming competition (2019).
- Top Student of the Year award, Department of Computer Engineering, IUST.
- Ranked in the top 0.5% of more than 150,000 participants in Iran's national university entrance examination (2016).

// ---------------------------------------------------------------- Languages
= Languages
*English:* Fluent #h(14pt) *Azerbaijani:* Native #h(14pt) *Persian:* Native
