CREATE DATABASE deegree_inspire_oi WITH OWNER=deegree TEMPLATE=postgis_template;
\c deegree_inspire_oi


CREATE TABLE oi_aggregatedmosaicelement (
    attr_gml_id text,
    gml_identifier text,
    gml_identifier_attr_codespace text,
    oi_inspireid_base_identifier_base_localid text,
    oi_inspireid_base_identifier_base_namespace text,
    oi_inspireid_base_identifier_base_versionid text,
    oi_inspireid_base_identifier_base_versionid_attr_nilreason text,
    oi_inspireid_base_identifier_base_versionid_attr_xsi_nil boolean,
    oi_geometry_attr_nilreason text,
    oi_geometry_attr_gml_remoteschema text,
    oi_geometry_attr_owns boolean,
    CONSTRAINT oi_aggregatedmosaicelement_pkey PRIMARY KEY (attr_gml_id)
);
SELECT ADDGEOMETRYCOLUMN('', 'oi_aggregatedmosaicelement','oi_geometry_value','0','GEOMETRY', 2);
CREATE TABLE oi_orthoimagecoverage (
    attr_gml_id text,
    gml_identifier text,
    gml_identifier_attr_codespace text,
    oi_inspireid_base_identifier_base_localid text,
    oi_inspireid_base_identifier_base_namespace text,
    oi_inspireid_base_identifier_base_versionid text,
    oi_inspireid_base_identifier_base_versionid_attr_nilreason text,
    oi_inspireid_base_identifier_base_versionid_attr_xsi_nil boolean,
    oi_footprint_attr_nilreason text,
    oi_footprint_attr_gml_remoteschema text,
    oi_footprint_attr_owns boolean,
    oi_footprint_attr_xsi_nil boolean,
    oi_interpolationtype_attr_owns boolean,
    oi_interpolationtype_attr_nilreason text,
    oi_interpolationtype_attr_gml_remoteschema text,
    oi_interpolationtype_fk text,
    oi_interpolationtype_href text,
    oi_name text,
    oi_name_attr_nilreason text,
    oi_name_attr_xsi_nil boolean,
    oi_beginlifespanversion text,
    oi_beginlifespanversion_attr_frame text,
    oi_beginlifespanversion_attr_calendareraname text,
    oi_beginlifespanversion_attr_indeterminateposition text,
    oi_beginlifespanversion_attr_xsi_nil boolean,
    oi_endlifespanversion text,
    oi_endlifespanversion_attr_frame text,
    oi_endlifespanversion_attr_calendareraname text,
    oi_endlifespanversion_attr_indeterminateposition text,
    oi_endlifespanversion_attr_xsi_nil boolean,
    CONSTRAINT oi_orthoimagecoverage_pkey PRIMARY KEY (attr_gml_id)
);
CREATE TABLE oi_orthoimagecoverage_gmlcov_metadata (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES oi_orthoimagecoverage ON DELETE CASCADE,
    num integer not null,
    attr_xlink_type text,
    attr_xlink_href text,
    attr_xlink_role text,
    attr_xlink_arcrole text,
    attr_xlink_title text,
    attr_xlink_show text,
    attr_xlink_actuate text,
    attr_nilreason text,
    attr_gml_remoteschema text,
    attr_owns boolean
);
SELECT ADDGEOMETRYCOLUMN('', 'oi_orthoimagecoverage','oi_footprint_value','0','GEOMETRY', 2);
CREATE TABLE oi_orthoimagecoverage_oi_contributingorthoimagecoverage (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES oi_orthoimagecoverage ON DELETE CASCADE,
    num integer not null,
    oi_orthoimageaggregation_oi_contributingfootprint_attr_ni_196 text,
    oi_orthoimageaggregation_oi_contributingfootprint_attr_gm_197 text,
    oi_orthoimageaggregation_oi_contributingfootprint_attr_owns boolean,
    oi_orthoimageaggregation_oi_contributingorthoimagecoverag_198 text,
    oi_orthoimageaggregation_oi_contributingorthoimagecoverag_199 text,
    oi_orthoimageaggregation_oi_contributingorthoimagecoverag_200 boolean,
    oi_orthoimageaggregation_oi_contributingorthoimagecoverage_fk text,
    oi_orthoimageaggregation_oi_contributingorthoimagecoverag_201 text
);
SELECT ADDGEOMETRYCOLUMN('', 'oi_orthoimagecoverage_oi_contributingorthoimagecoverage','oi_orthoimageaggregation_oi_contributingfootprint_value','0','GEOMETRY', 2);
CREATE TABLE oi_orthoimagecoverage_oi_mosaicelement (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES oi_orthoimagecoverage ON DELETE CASCADE,
    num integer not null,
    attr_nilreason text,
    attr_gml_remoteschema text,
    attr_owns boolean,
    attr_xsi_nil boolean,
    fk text,
    href text
);
CREATE TABLE oi_singlemosaicelement (
    attr_gml_id text,
    gml_identifier text,
    gml_identifier_attr_codespace text,
    oi_inspireid_base_identifier_base_localid text,
    oi_inspireid_base_identifier_base_namespace text,
    oi_inspireid_base_identifier_base_versionid text,
    oi_inspireid_base_identifier_base_versionid_attr_nilreason text,
    oi_inspireid_base_identifier_base_versionid_attr_xsi_nil boolean,
    oi_geometry_attr_nilreason text,
    oi_geometry_attr_gml_remoteschema text,
    oi_geometry_attr_owns boolean,
    oi_imagesourcereference text,
    oi_imagesourcereference_attr_nilreason text,
    oi_imagesourcereference_attr_xsi_nil boolean,
    CONSTRAINT oi_singlemosaicelement_pkey PRIMARY KEY (attr_gml_id)
);
SELECT ADDGEOMETRYCOLUMN('', 'oi_singlemosaicelement','oi_geometry_value','0','GEOMETRY', 2);
CREATE TABLE gmlcov_gridcoverage (
    attr_gml_id text,
    gml_identifier text,
    gml_identifier_attr_codespace text,
    CONSTRAINT gmlcov_gridcoverage_pkey PRIMARY KEY (attr_gml_id)
);
CREATE TABLE gmlcov_gridcoverage_gmlcov_metadata (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES gmlcov_gridcoverage ON DELETE CASCADE,
    num integer not null,
    attr_xlink_type text,
    attr_xlink_href text,
    attr_xlink_role text,
    attr_xlink_arcrole text,
    attr_xlink_title text,
    attr_xlink_show text,
    attr_xlink_actuate text,
    attr_nilreason text,
    attr_gml_remoteschema text,
    attr_owns boolean
);
CREATE TABLE gmlcov_multicurvecoverage (
    attr_gml_id text,
    gml_identifier text,
    gml_identifier_attr_codespace text,
    CONSTRAINT gmlcov_multicurvecoverage_pkey PRIMARY KEY (attr_gml_id)
);
CREATE TABLE gmlcov_multicurvecoverage_gmlcov_metadata (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES gmlcov_multicurvecoverage ON DELETE CASCADE,
    num integer not null,
    attr_xlink_type text,
    attr_xlink_href text,
    attr_xlink_role text,
    attr_xlink_arcrole text,
    attr_xlink_title text,
    attr_xlink_show text,
    attr_xlink_actuate text,
    attr_nilreason text,
    attr_gml_remoteschema text,
    attr_owns boolean
);
CREATE TABLE gmlcov_multipointcoverage (
    attr_gml_id text,
    gml_identifier text,
    gml_identifier_attr_codespace text,
    CONSTRAINT gmlcov_multipointcoverage_pkey PRIMARY KEY (attr_gml_id)
);
CREATE TABLE gmlcov_multipointcoverage_gmlcov_metadata (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES gmlcov_multipointcoverage ON DELETE CASCADE,
    num integer not null,
    attr_xlink_type text,
    attr_xlink_href text,
    attr_xlink_role text,
    attr_xlink_arcrole text,
    attr_xlink_title text,
    attr_xlink_show text,
    attr_xlink_actuate text,
    attr_nilreason text,
    attr_gml_remoteschema text,
    attr_owns boolean
);
CREATE TABLE gmlcov_multisolidcoverage (
    attr_gml_id text,
    gml_identifier text,
    gml_identifier_attr_codespace text,
    CONSTRAINT gmlcov_multisolidcoverage_pkey PRIMARY KEY (attr_gml_id)
);
CREATE TABLE gmlcov_multisolidcoverage_gmlcov_metadata (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES gmlcov_multisolidcoverage ON DELETE CASCADE,
    num integer not null,
    attr_xlink_type text,
    attr_xlink_href text,
    attr_xlink_role text,
    attr_xlink_arcrole text,
    attr_xlink_title text,
    attr_xlink_show text,
    attr_xlink_actuate text,
    attr_nilreason text,
    attr_gml_remoteschema text,
    attr_owns boolean
);
CREATE TABLE gmlcov_multisurfacecoverage (
    attr_gml_id text,
    gml_identifier text,
    gml_identifier_attr_codespace text,
    CONSTRAINT gmlcov_multisurfacecoverage_pkey PRIMARY KEY (attr_gml_id)
);
CREATE TABLE gmlcov_multisurfacecoverage_gmlcov_metadata (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES gmlcov_multisurfacecoverage ON DELETE CASCADE,
    num integer not null,
    attr_xlink_type text,
    attr_xlink_href text,
    attr_xlink_role text,
    attr_xlink_arcrole text,
    attr_xlink_title text,
    attr_xlink_show text,
    attr_xlink_actuate text,
    attr_nilreason text,
    attr_gml_remoteschema text,
    attr_owns boolean
);
CREATE TABLE gmlcov_rectifiedgridcoverage (
    attr_gml_id text,
    gml_identifier text,
    gml_identifier_attr_codespace text,
    CONSTRAINT gmlcov_rectifiedgridcoverage_pkey PRIMARY KEY (attr_gml_id)
);
CREATE TABLE gmlcov_rectifiedgridcoverage_gmlcov_metadata (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES gmlcov_rectifiedgridcoverage ON DELETE CASCADE,
    num integer not null,
    attr_xlink_type text,
    attr_xlink_href text,
    attr_xlink_role text,
    attr_xlink_arcrole text,
    attr_xlink_title text,
    attr_xlink_show text,
    attr_xlink_actuate text,
    attr_nilreason text,
    attr_gml_remoteschema text,
    attr_owns boolean
);
CREATE TABLE gmlcov_referenceablegridcoverage (
    attr_gml_id text,
    gml_identifier text,
    gml_identifier_attr_codespace text,
    CONSTRAINT gmlcov_referenceablegridcoverage_pkey PRIMARY KEY (attr_gml_id)
);
CREATE TABLE gmlcov_referenceablegridcoverage_gmlcov_metadata (
    id serial PRIMARY KEY,
    parentfk text NOT NULL REFERENCES gmlcov_referenceablegridcoverage ON DELETE CASCADE,
    num integer not null,
    attr_xlink_type text,
    attr_xlink_href text,
    attr_xlink_role text,
    attr_xlink_arcrole text,
    attr_xlink_title text,
    attr_xlink_show text,
    attr_xlink_actuate text,
    attr_nilreason text,
    attr_gml_remoteschema text,
    attr_owns boolean
);
