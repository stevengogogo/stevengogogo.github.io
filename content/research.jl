

######################################
# research.html
#   items: topics, interdiction, structure, modernac, explainable (all Blocks)
######################################
topics = Block(
    paragraphs(
        """
        """
    ),
    images()
)

circadian = Block(
    paragraphs(
        """
        The circadian rhythm is a biological oscillator that behaves limit cycle and is synchronized with solar time. In this presentation, we simulates the circadian model(Goldbeter,1996) to describe the modulation of circadian clock by changing the degradation rate of PER protein.
        """
    ),
    images(
        Image("anim_timeSeries.gif", "Circadian Simulation")
    )
)

mitosis = Block(
    paragraphs(
        """
        This project used convolutional neural network to classify mitotic stages via microscopic imaging. Noted that the classification is based on either nucleus or mitochondrial morphology to obtain time series classification. After CNN was trained, we applied LIME and SHAP algorithm to investigate the attention of the trained neural network. This is a pipeline to implement reliable classification algorithm with cell images.
        """,
        """
        Most of cancer cells possess abnormal division process, and cell division state is a critical feature for pathological diagnosis. However, there is limited stained and fluorescent method to visualize the internal structure of a cell. Thus, indirect morphology changes is sometimes the only hint to understand the mitotic stage of the cell. In this research, we used mitochondrial morphology to classify the nucleus-related event, and shows that CNN is able to tackle with hidden mitotic information.
        """,
        """
        Possible application includes clinical diagnosis of imaging data that comes from high-throughout device like High Content, and tissue sections. Our aim is to provide automatic mitotic segmentation to understand the population status of the target tissue. Finally, we applied SHAP and LIME to provide the explainability of the trained CNN model.
        """
    ),
    images(
        Image("mitosis.gif","result")
    )
)

oct = Block(
    paragraphs(
        """
        Calculus formation is not always observable from the surface. This is a major obstacle to the early treatment of dental caries. Though X-ray is a standard tool for evaluating caries prognosis, the biofilm-formed calculus can be hardly detected. Furthermore, eye observation is limited to the surface, ignoring subgingival calculus that is the major cause of periodontitis.
        """,
        """
        Optical coherence tomography (OCT) provides a non-invasive way to observe calculus covered by the gingiva. The Fourier optic provides an adjustable focal plain that can visualize the calculus in the subgingival region with far-red light. It is also comparatively cheaper and possible to be portable in the near future.
        """,
        """
        However, OCT imaging is noisy and distorted by the reflection of the enamel. Although The human eye can observe the calculus region slice by slice, the automatic segmentation can provide a window for diagnosis. On the other hand, OCT is able to acquire 3D sections. 3D reconstruction provides a new era of periodontology in diagnosis and treatment evaluation. Therefore, automatic segmentation is required in this application.
        """,
        """
        U-Net is a promising way for the novel application of dental calculus detection via OCT imaging. We should acquire more labeled datasets and compare images under different material interference.
        """
    ),
    images(
        Image("dentaloct.png", "OCT Image")
    )
)

visualforce = Block(
    paragraphs(
        """
        A system for multi-direction searching feedback, the system comprises: a signal sensing device which is worn on a user's head for detecting and receiving a signal from a signal direction; a vibration array including a first vibrating element corresponding to a first detection direction of the signal sensing device; and a processor electrically connecting the signal sensing device and the vibration array, the processor determines a first vibration strength of the first vibrating element based on the signal strength information outputted from the signal sensing device.
        """,
        """
        This project estabilished a embeded system for transferring visual information to tactile sensation. The image is modulated and transformed with FFT and neural network to identify specific objects. We used supervised learning method for detecting specific object to understand how tactile vibration can be a tool to guide users to locate the object with visual information. The purpose of this project is to be an assistive device for the visually-impaired. Thus, we called it VisualForce.
        """
    ),
    images(
        Image("VF_demo.png", "demo"),
        Image("VF_workflow.png", "workflow")
    )
)

page(
    title="research",
    sections=[
        Section(
            title="Research topics",
            items=topics
        ),
        Section(
            title="Circadian Simulation with ModelingToolkit.jl",
            items=circadian
        ),
        Section(
            title="Mitosis Classification with CNN and Explainable Model",
            items=mitosis
        ),
        Section(
            title="Dental Calculus Segmentation with OCT Imaging and U‐Net",
            items=oct
        ),
        Section(
            title="System and method for multi‐direction searching feedback",
            items=visualforce
        ),
        Section(
            title="Gallery of Projects",
            hide=false,
            items=GitRepo(
                "stevengogogo/DataStructureAlgorithm",
                "stevengogogo/CircadianSimulation",
                "stevengogogo/CalculusSegmentationOCT",
                "stevengogogo/MitosisClassification",
                "stevengogogo/VisualForce",
                "stevengogogo/PolarCode",
                "stevengogogo/RetroSignalModel.jl",
                "stevengogogo/BEBI-5009-Modeling-and-Simulation-in-Systems-Biology",
                "stevengogogo/MitoRetroDynamics",
                "stevengogogo/CProjectTemplate",
                "stevengogogo/PotentialMap.jl")
        )

    ]
)
