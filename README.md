# deegree-workspace-eenvplus
Configuration for eENVplus INSPIRE compliant services, using deegree WMS and WFS

This workspace is a complete INSPIRE View and Download Services setup. It contains WFSs (2.0.0 and 1.1.0) configured for all Annex I, II, and III Data Themes and a WMS (1.3.0 and 1.1.1) that illustrates some layers from the eENVplus pilots.

## Installation

### System Requirements

In order to run deegree, you will need

- Oracle Java 6 JDK, Update 4 or better. We recommend using the latest Java 6 version. Java 7 should also work, but is not as well tested.

Additional components

- PostgreSQL (8.3, 8.4 or 9.0) with PostGIS (1.4 or 1.5)

Consult the [Deegree system requirements page](http://download.deegree.org/documentation/3.3.15/html/installation.html#system-requirements) for more information.

### Running Deegree

First of all, you need to install [Apache Tomcat 7](http://tomcat.apache.org/) as a system service. Afterwards, download the [WAR](https://github.com/eENVplus/deegree3/releases/download/deegree-3.3.15-fixed/deegree-webservices-3.3.15-fixed.war) custom version of deegree webservices and deploy it into your Tomcat installation (e.g. by copying the WAR file into the webapps folder). Consult the Tomcat documentation for more information and options.

## eENVplus workspace

### Getting started

#### Create PostGIS databases

tbd


####  Import the workspace

[Download the latest version of the eENVplus workspace here](https://github.com/eENVplus/deegree-workspace-eenvplus/releases). 

Afterwards, open [http://localhost:8080/deegree/](http://localhost:8080/deegree/) in your browser to go to the deegree webservices *administration console*.
In order to start the eENVplus workspace you need to upload to the deegree webservices. Go to `General > workspaces` and you will find the **Upload workspace** section, where you can browse and upload the new workspace.

![Deegree workspaces section](https://raw.githubusercontent.com/eENVplus/deegree-workspace-eenvplus/screenshots/console_workspaces.png "Workspaces Section")

Name the workspace as "deegree-workspace-eenvplus" before importing it.

![Deegree upload workspace](https://raw.githubusercontent.com/eENVplus/deegree-workspace-eenvplus/screenshots/console_upload.png "Upload Workspace")

After uploading has completed, the the workspace will be listed in section *Available workspaces*:

![Deegree new workspace available](https://raw.githubusercontent.com/eENVplus/deegree-workspace-eenvplus/screenshots/console_workspace_available.png "New Workspace Available")

You can simply active the "deegree-workspace-eenvplus" by pressing the *Start* button.

### Feature Stores

tbd

### Ingest sample data

tbd

### WFSs

tbd

### WMS

tbd

Consult the [Deegree documentation](http://download.deegree.org/documentation/3.3.15/html/index.html) for more information.