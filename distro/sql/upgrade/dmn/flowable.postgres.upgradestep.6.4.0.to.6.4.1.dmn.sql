
UPDATE act_dmn_databasechangeloglock SET LOCKED = TRUE, LOCKEDBY = '192.168.1.5 (192.168.1.5)', LOCKGRANTED = '2019-03-13 21:24:45.286' WHERE ID = 1 AND LOCKED = FALSE;

CREATE UNIQUE INDEX ACT_IDX_DEC_TBL_UNIQ ON ACT_DMN_DECISION_TABLE(KEY_, VERSION_, TENANT_ID_);

INSERT INTO act_dmn_databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('6', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', NOW(), 5, '7:c44cb06af8977c776a4e93aebe96c568', 'createIndex indexName=ACT_IDX_DEC_TBL_UNIQ, tableName=ACT_DMN_DECISION_TABLE', '', 'EXECUTED', NULL, NULL, '3.5.3', '2508685343');

UPDATE act_dmn_databasechangeloglock SET LOCKED = FALSE, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;
