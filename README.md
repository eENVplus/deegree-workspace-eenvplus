# deegree-workspace-eenvplus
Configuration for eENVplus INSPIRE compliant services, using deegree WMS and WFS

This workspace is an INSPIRE View and Download Services setup. It contains WFSs (2.0.0 and 1.1.0) configured for *Bio-geographical Regions*, *Habitats and Biotopes*, *Hydrography*, *Protected Sites*, *Species Distribution*, and *Utility and Government Services* Data Themes and a WMS (1.3.0 and 1.1.1) pre-configured with some layers from the eENVplus pilots.

## Acknowledgement

This workspace was created within the eENVplus project (http://www.eenvplus.eu) funded by European Union under the Competitiveness and Innovation Framework Programme – Information and Communication Technologies Policy Support Programme (CIP-ICT-PSP) grant No. 325232.

The development was performed by [Fondazione GraphiTech](http://www.graphitech.it).

## Installation

### System Requirements

In order to run deegree, you will need

- Oracle Java 6 JDK, Update 4 or better. We recommend using the latest Java 6 version. Java 7 should also work, but has not been already tested.
- PostgreSQL (8.3, 8.4 or 9.0) with PostGIS (1.4 or 1.5)

Consult the [Deegree system requirements page](http://download.deegree.org/documentation/3.3.15/html/installation.html#system-requirements) for more information.

### Running Deegree

First of all, you need to install [Apache Tomcat 7](http://tomcat.apache.org/) as a system service. Afterwards, download the [WAR](https://github.com/eENVplus/deegree3/releases/download/deegree-3.3.15-fixed/deegree-webservices-3.3.15-fixed.war) custom version of deegree webservices and deploy it into your Tomcat installation (e.g. by copying the WAR file into the webapps folder). Consult the Tomcat documentation for more information and options.

## eENVplus workspace

### Getting started

#### Create PostGIS databases

[Download from the latest version of the eENVplus workspace](https://github.com/eENVplus/deegree-workspace-eenvplus/releases) the file `sql.zip`. Each sql script can be used with `psql` to create the corresponding database and its tables.
**<u>Please note</u>** that you need to have a PostGIS template called "postgis_template" and PostgreSQL user named "deegree" (without password).
**<u>Please note</u>** that the created databases store geometries with the SRS EPSG:4326. The geometry can be re-projected to other SRSs by deegree webservices (WFS and WMS).

####  Import the workspace

[Download the latest version of the eENVplus workspace here](https://github.com/eENVplus/deegree-workspace-eenvplus/releases). 

Afterwards, open [http://localhost:8080/deegree/](http://localhost:8080/deegree/) in your browser to go to the deegree webservices *administration console*.
In order to start the eENVplus workspace you need to upload to the deegree webservices. Go to `General > workspaces` and you will find the **Upload workspace** section, where you can browse and upload the new workspace.

![Deegree workspaces section](https://raw.githubusercontent.com/eENVplus/deegree-workspace-eenvplus/screenshots/console_workspaces.png "Workspaces Section")

Name the workspace as "deegree-workspace-eenvplus" before importing it.

![Deegree upload workspace](https://raw.githubusercontent.com/eENVplus/deegree-workspace-eenvplus/screenshots/console_upload.png "Upload Workspace")

After uploading has completed, the workspace will be listed in section *Available workspaces*:

![Deegree new workspace available](https://raw.githubusercontent.com/eENVplus/deegree-workspace-eenvplus/screenshots/console_workspace_available.png "New Workspace Available")

You can simply active the "deegree-workspace-eenvplus" by pressing the *Start* button.

### Feature Stores

Feature stores are those resources that provide access to stored features. In particular, SQL feature store allows to configure highly flexible mappings between feature types and database tables.
The two most common use cases for feature stores are:

- Accessing via Web Feature Service (WFS)
- Providing of data for Feature layers (WMS)

The *eENVplus workspace* comes <u>pre-configured</u> with a SQL feature store for the following INSPIRE Data Themes:

1. *Bio-geographical Regions*
2. *Habitats and Biotopes*
3. *Hydrography*
4. *Protected Sites*
5. *Species Distribution*
6. *Utility and Government Services*

### Ingest data

[Download from the latest version of the eENVplus workspace](https://github.com/eENVplus/deegree-workspace-eenvplus/releases) the file `gml.zip`. It contains a GML file for each of the supported INSPIRE Data Themes:

1. *Bio-geographical Regions*
2. *Habitats and Biotopes*
3. *Hydrography*
4. *Protected Sites*
5. *Species Distribution*
6. *Utility and Government Services*

In this example we are going to ingest the `sd.gml` file in the "inspire_sd" feature store.
Open the deegree console and go to `data stores > feature` and you will find all the available feature stores.

![Deegree feature store](https://raw.githubusercontent.com/eENVplus/deegree-workspace-eenvplus/screenshots/console_featurestore.png "Featurestore Section")

Look for the "inspire_sd" feature store and click its *Loader* button.

![Deegree import features](https://raw.githubusercontent.com/eENVplus/deegree-workspace-eenvplus/screenshots/console_import.png "Import GML feature")

Here you can import a collection features from a GML file by providing its URL, e.g. "file:///home/user/Downloads/gml/sd.gml", and clicking on  the *Import* button.

### WFSs

The configuration of each WFS can be found under the `web services > services` section. They are available at:

- [http://localhost:8080/deegree/services/br?service=WFS&request=GetCapabilities](http://localhost:8080/deegree/services/br?service=WFS&request=GetCapabilities)
- [http://localhost:8080/deegree/services/hb?service=WFS&request=GetCapabilities](http://localhost:8080/deegree/services/hb?service=WFS&request=GetCapabilities)
- [http://localhost:8080/deegree/services/hy?service=WFS&request=GetCapabilities](http://localhost:8080/deegree/services/hy?service=WFS&request=GetCapabilities)
- [http://localhost:8080/deegree/services/ps?service=WFS&request=GetCapabilities](http://localhost:8080/deegree/services/ps?service=WFS&request=GetCapabilities)
- [http://localhost:8080/deegree/services/sd?service=WFS&request=GetCapabilities](http://localhost:8080/deegree/services/sd?service=WFS&request=GetCapabilities)
- [http://localhost:8080/deegree/services/us?service=WFS&request=GetCapabilities](http://localhost:8080/deegree/services/us?service=WFS&request=GetCapabilities)

### WMS

This workspace contains a WMS pre-configured with the supported INSPIRE Data Themes. It can be access at [[http://localhost:8080/deegree/services/wms?service=WMS&request=GetCapabilities](http://localhost:8080/deegree/services/us?service=WFS&request=GetCapabilities)] and it provides the following layers:

1. `BR.Bio-geographicalRegion`
2. `HB.Habitat`
3. `HY.PhysicalWaters.Waterbodies`
4. `PS.ProtectedSite`
5. `SD.SpeciesDistribution`
6. `US.SewerNetwork`

After downloading, activating this workspace and ingesting some example data, you can go to `General > see layers` section, which opens a simple map client that displays a base map. 

![Deegree base map](https://raw.githubusercontent.com/eENVplus/deegree-workspace-eenvplus/screenshots/console_map.png "Base Map")

Click the `+` on the right to see a list of available layers. Tick the ones you want to see. They will be rendered by your deegree WMS instance.

![Deegree renders layers](https://raw.githubusercontent.com/eENVplus/deegree-workspace-eenvplus/screenshots/console_layers.png "Example layers")

## Need help?

Consult the [Deegree documentation](http://download.deegree.org/documentation/3.3.15/html/index.html) for more information.

## Contact

If you are interested, please [contact us](mailto:umberto.di.staso@graphitech.it).
