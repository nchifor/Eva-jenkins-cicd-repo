# Jenkins Pipelines
Jenkins Pipeline (or simply "Pipeline" with a capital "P") is a suite of plugins which supports implementing and integrating continuous delivery pipelines into Jenkins.
- A continuous delivery (CD) pipeline is an automated expression of your process for getting software from version control right through to your users and customers. 
- Every change to your software (committed in source control) goes through a complex process on its way to being released. 
- This process involves building the software in a reliable and repeatable manner, as well as progressing the built software (called a "build") through multiple stages of testing and deployment.
- The definition of a Jenkins Pipeline is written into a text file (called a Jenkinsfile) which in turn can be committed to a project’s source control repository


## Why pipeline
Jenkins is, fundamentally, an automation engine which supports a number of automation patterns. Pipeline adds a powerful set of automation tools onto Jenkins, supporting use cases that span from simple continuous integration to comprehensive CD pipelines. By modeling a series of related tasks, users can take advantage of the many features of Pipeline:

- **Code**: Pipelines are implemented in code and typically checked into source control, giving teams the ability to edit, review, and iterate upon their delivery pipeline.
- **Durable**: Pipelines can survive both planned and unplanned restarts of the Jenkins controller.
- **Pausable**: Pipelines can optionally stop and wait for human input or approval before continuing the Pipeline run.
- **Versatile**: Pipelines support complex real-world CD requirements, including the ability to fork/join, loop, and perform work in parallel.
- **Extensible**: The Pipeline plugin supports custom extensions to its DSL [1] and multiple options for integration with other plugins.

The flowchart below is an example of one CD scenario easily modeled in Jenkins Pipeline

![Terraform Process](https://www.jenkins.io/doc/book/resources/pipeline/realworld-pipeline-flow.png)

## Pipeline concepts

A Pipeline is a user-defined model of a CD pipeline. A Pipeline’s code defines your entire build process, which typically includes stages for building an application, testing it and then delivering it.
Also, a pipeline block is a key part of Declarative Pipeline syntax.

- **Node**: A node is a machine which is part of the Jenkins environment and is capable of executing a Pipeline. Also, a node block is a key part of Scripted Pipeline syntax.

- **Stage**: A stage block defines a conceptually distinct subset of tasks performed through the entire Pipeline (e.g. "*Build*", "*Test*" and "*Deploy*" stages), which is used by many plugins to visualize or present Jenkins Pipeline status/progress.

-  **Step**: A single task. Fundamentally, a step tells Jenkins what to do at a particular point in time (or "step" in the process). For example, to execute the shell command `make`, use the sh step: `sh 'make'`. 

## Pipeline syntax overview
In Declarative Pipeline syntax, the pipeline block defines all the work done throughout your entire Pipeline.

```sh

pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                //
            }
        }
        stage('Test') {
            steps {
                //
            }
        }
        stage('Deploy') {
            steps {
                //
            }
        }
    }
}

```
---

- Execute this Pipeline or any of its stages, on any available agent.
- Defines the "`Build`" stage.
- Perform some steps related to the "`Build`" stage.
- Defines the "`Test`" stage.
- Perform some steps related to the "`Test`" stage.
- Defines the "`Deploy`" stage.
- Perform some steps related to the "`Deploy`" stage.

## Using a Jenkinsfile

To know more how to use Jenkinsfile, use this documentation on Jenkinsfile. https://www.jenkins.io/doc/book/pipeline/jenkinsfile/


# Happy Learning