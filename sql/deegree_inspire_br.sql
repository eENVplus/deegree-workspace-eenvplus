CREATE DATABASE deegree_inspire_br WITH OWNER=deegree TEMPLATE=postgis_template;
\c deegree_inspire_br


CREATE TABLE br_bio_geographicalregion (
    attr_gml_id text,
    gml_identifier text,
    gml_identifier_attr_codespace text,
    br_inspireid_base_identifier_base_localid text,
    br_inspireid_base_identifier_base_namespace text,
    br_inspireid_base_identifier_base_versionid text,
    br_inspireid_base_identifier_base_versionid_attr_nilreason text,
    br_inspireid_base_identifier_base_versionid_attr_xsi_nil boolean,
    br_geometry_attr_nilreason text,
    br_geometry_attr_gml_remoteschema text,
    br_geometry_attr_owns boolean,
    br_regionclassification_attr_owns boolean,
    br_regionclassification_attr_nilreason text,
    br_regionclassification_attr_gml_remoteschema text,
    br_regionclassification_fk text,
    br_regionclassification_href text,
    br_regionclassificationscheme_attr_owns boolean,
    br_regionclassificationscheme_attr_nilreason text,
    br_regionclassificationscheme_attr_gml_remoteschema text,
    br_regionclassificationscheme_fk text,
    br_regionclassificationscheme_href text,
    br_regionclassificationlevel_attr_owns boolean,
    br_regionclassificationlevel_attr_nilreason text,
    br_regionclassificationlevel_attr_gml_remoteschema text,
    br_regionclassificationlevel_attr_xsi_nil boolean,
    br_regionclassificationlevel_fk text,
    br_regionclassificationlevel_href text,
    br_beginlifespanversion timestamp,
    br_beginlifespanversion_attr_nilreason text,
    br_beginlifespanversion_attr_xsi_nil boolean,
    br_endlifespanversion timestamp,
    br_endlifespanversion_attr_nilreason text,
    br_endlifespanversion_attr_xsi_nil boolean,
    CONSTRAINT br_bio_geographicalregion_pkey PRIMARY KEY (attr_gml_id)
);
SELECT ADDGEOMETRYCOLUMN('', 'br_bio_geographicalregion','br_geometry_value','0','GEOMETRY', 2);
