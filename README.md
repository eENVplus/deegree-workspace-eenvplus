# deegree-workspace-eenvplus
Configuration for eENVplus INSPIRE compliant services, using deegree WMS and WFS

## Deegree Installation

### System Requirements

deegree webservices work on any platform with a compatible Java installation, including:

- Microsoft Windows
- Linux
- Mac OS X
- Solaris

Supported Java versions are OpenJDK version 7 (currently only available for Linux), Oracle Java 7 (JDK) and Oracle Java 6 (JDK). Other Java versions may work, but are not officially supported by the deegree development team. Consult the Deegree [documentation](http://download.deegree.org/documentation/3.3.15/html/index.html) for more information.

### Running

First of all, you need to install [Apache Tomcat 7](http://tomcat.apache.org/) as a system service. Afterwards, download the [WAR](https://github.com/eENVplus/deegree3/releases/download/deegree-3.3.15-fixed/deegree-webservices-3.3.15-fixed.war) custom version of deegree webservices and deploy it into your Tomcat installation (e.g. by copying the WAR file into the webapps folder). Consult the Tomcat documentation for more information and options.

## eENVplus workspace

### Getting started

[Download the latest version of the eENVplus workspace here](https://github.com/eENVplus/deegree-workspace-eenvplus/releases). 

Afterwards, open [http://localhost:8080/deegree/](http://localhost:8080/deegree/) in your browser to go to the deegree webservices *administration console*.
In order to start the eENVplus workspace you need to upload to the deegree webservices. Go to `General > workspaces` and you will find the **Upload workspace** section, where you can browes and upload the workspace.

![Deegree workspaces section](https://raw.githubusercontent.com/eENVplus/deegree-workspace-eenvplus/screenshots/console_workspaces.png "Workspaces Section")

Name the workspace as "deegree-workspace-eenvplus" before importing it.

![Deegree upload workspace](https://raw.githubusercontent.com/eENVplus/deegree-workspace-eenvplus/screenshots/console_upload.png "Upload Workspace")

After uploading has completed, the the workspace will be listed in section *Available workspaces*:

![Deegree new workspace available](https://raw.githubusercontent.com/eENVplus/deegree-workspace-eenvplus/screenshots/console_workspace_available.png "New Workspace Available")

You can simply active the "deegree-workspace-eenvplus" by pressing the *Start* button.

### Ingest sample data

### WFS

### WMS