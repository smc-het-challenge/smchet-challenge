cwlVersion: v1.0
class: CommandLineTool
label: Write Report
baseCommand: ["python", "/opt/smchet-challenge/create-smchet-report/write_report.py"]
requirements:
  - class: DockerRequirement
    dockerPull: smcheteval/phylowgs:0.1
  - class: EnvVarRequirement
    envDef:
      PYTHONPATH: /opt/phylowgs/

inputs:
  tree_summary:
    type: File
    inputBinding:
      position: 1

  mutation_list:
    type: File
    inputBinding:
      position: 2

  mutation_assignment: 
    type: File
    inputBinding:
      position: 3

  output_dir:
    type: string
    default: ./
    inputBinding:
      position: 4

outputs:
  cellularity:
    type: File
    outputBinding:
      glob: 1A.txt

  population:
    type: File
    outputBinding:
      glob: 1B.txt

  proportion:
    type: File
    outputBinding:
      glob: 1C.txt

  cluster_assignment:
    type: File
    outputBinding:
      glob: 2A.txt

  cocluster_assignment:
    type: File
    outputBinding:
      glob: 2B.txt.gz
