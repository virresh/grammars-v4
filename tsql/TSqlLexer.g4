/*
T-SQL (Transact-SQL, MSSQL) grammar.
The MIT License (MIT).
Copyright (c) 2017, Mark Adams (madams51703@gmail.com)
Copyright (c) 2015-2017, Ivan Kochurkin (kvanttt@gmail.com), Positive Technologies.
Copyright (c) 2016, Scott Ure (scott@redstormsoftware.com).
Copyright (c) 2016, Rui Zhang (ruizhang.ccs@gmail.com).
Copyright (c) 2016, Marcus Henriksson (kuseman80@gmail.com).
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

lexer grammar TSqlLexer;

// Basic keywords (from https://msdn.microsoft.com/en-us/library/ms189822.aspx)
ADD:                                   'ADD';
AES:                                   'AES';
ALL:                                   'ALL';
ALTER:                                 'ALTER';
AND:                                   'AND';
ANONYMOUS:                             'ANONYMOUS';
ANY:                                   'ANY';
APPEND:                                'APPEND';
APPLICATION:                           'APPLICATION';
AS:                                    'AS';
ASC:                                   'ASC';
ASYMMETRIC:                            'ASYMMETRIC';
AUTHORIZATION:                         'AUTHORIZATION';
AUTHENTICATION:                        'AUTHENTICATION';
BACKSLASH:                             '\\';
BACKUP:                                'BACKUP';
BEGIN:                                 'BEGIN';
BETWEEN:                               'BETWEEN';
BLOCKING_HIERARCHY:                    'BLOCKING_HIERARCHY';
BREAK:                                 'BREAK';
BROWSE:                                'BROWSE';
BUFFER:                                'BUFFER';
BULK:                                  'BULK';
BY:                                    'BY';
CACHE:                                 'CACHE';
CALLED:                                'CALLED';
CASCADE:                               'CASCADE';
CASE:                                  'CASE';
CERTIFICATE:                           'CERTIFICATE';
CHANGETABLE:                           'CHANGETABLE';
CHANGES:                               'CHANGES';
CHECK:                                 'CHECK';
CHECKPOINT:                            'CHECKPOINT';
CHECK_POLICY:                          'CHECK_POLICY';
CHECK_EXPIRATION:                      'CHECK_EXPIRATION';
CLASSIFIER_FUNCTION:                   'CLASSIFIER_FUNCTION';
CLOSE:                                 'CLOSE';
CLUSTER:                               'CLUSTER';
CLUSTERED:                             'CLUSTERED';
COALESCE:                              'COALESCE';
COLLATE:                               'COLLATE';
COLUMN:                                'COLUMN';
COMMIT:                                'COMMIT';
COMPUTE:                               'COMPUTE';
CONFIGURATION:                         'CONFIGURATION';
CONSTRAINT:                            'CONSTRAINT';
CONTAINMENT:                           'CONTAINMENT';
CONTAINS:                              'CONTAINS';
CONTAINSTABLE:                         'CONTAINSTABLE';
CONTEXT:                               'CONTEXT';
CONTINUE:                              'CONTINUE';
CONTRACT:                              'CONTRACT';
CONTRACT_NAME:                         'CONTRACT_NAME';
CONVERSATION:                          'CONVERSATION';
CONVERT:                               'TRY_'? 'CONVERT';
CREATE:                                'CREATE';
CROSS:                                 'CROSS';
CURRENT:                               'CURRENT';
CURRENT_DATE:                          'CURRENT_DATE';
CURRENT_TIME:                          'CURRENT_TIME';
CURRENT_TIMESTAMP:                     'CURRENT_TIMESTAMP';
CURRENT_USER:                          'CURRENT_USER';
CURSOR:                                'CURSOR';
CYCLE:                                 'CYCLE';
DATA:                                  'DATA';
DATA_COMPRESSION:                      'DATA_COMPRESSION';
DATABASE:                              'DATABASE';
DATABASE_MIRRORING:                    'DATABASE_MIRRORING';
DBCC:                                  'DBCC';
DEALLOCATE:                            'DEALLOCATE';
DECLARE:                               'DECLARE';
DEFAULT:                               'DEFAULT';
DEFAULT_DATABASE:                      'DEFAULT_DATABASE';
DEFAULT_SCHEMA:                        'DEFAULT_SCHEMA';
DELETE:                                'DELETE';
DENY:                                  'DENY';
DESC:                                  'DESC';
DIAGNOSTICS:                           'DIAGNOSTICS';
DISK:                                  'DISK';
DISTINCT:                              'DISTINCT';
DISTRIBUTED:                           'DISTRIBUTED';
DOUBLE:                                'DOUBLE';
DOUBLE_BACK_SLASH:                     '\\\\';
DOUBLE_FORWARD_SLASH:                  '//';
DROP:                                  'DROP';
DUMP:                                  'DUMP';
ELSE:                                  'ELSE';
ENABLED:                               'ENABLED';
END:                                   'END';
ENDPOINT:                              'ENDPOINT';
ERRLVL:                                'ERRLVL';
ESCAPE:                                'ESCAPE';
ERROR:                                 'ERROR';
EVENTDATA:                             'EVENTDATA' '(' ')';
EXCEPT:                                'EXCEPT';
EXECUTE:                               'EXEC' 'UTE'?;
EXISTS:                                'EXISTS';
EXIT:                                  'EXIT';
EXTENSION:                             'EXTENSION';
EXTERNAL:                              'EXTERNAL';
EXTERNAL_ACCESS:                       'EXTERNAL_ACCESS';
FAILOVER:                              'FAILOVER';
FAILURECONDITIONLEVEL:                 'FAILURECONDITIONLEVEL';
FETCH:                                 'FETCH';
FILE:                                  'FILE';
FILENAME:                              'FILENAME';
FILLFACTOR:                            'FILLFACTOR';
FOR:                                   'FOR';
FORCESEEK:                             'FORCESEEK';
FORCE_SERVICE_ALLOW_DATA_LOSS:         'FORCE_SERVICE_ALLOW_DATA_LOSS';
FOREIGN:                               'FOREIGN';
FREETEXT:                              'FREETEXT';
FREETEXTTABLE:                         'FREETEXTTABLE';
FROM:                                  'FROM';
FULL:                                  'FULL';
FUNCTION:                              'FUNCTION';
GET:                                   'GET';
GOTO:                                  'GOTO';
GOVERNOR:                              'GOVERNOR';
GRANT:                                 'GRANT';
GROUP:                                 'GROUP';
HAVING:                                'HAVING';
HASHED:                                'HASHED';
HEALTHCHECKTIMEOUT:                    'HEALTHCHECKTIMEOUT';
IDENTITY:                              'IDENTITY';
IDENTITYCOL:                           'IDENTITYCOL';
IDENTITY_INSERT:                       'IDENTITY_INSERT';
IF:                                    'IF';
IN:                                    'IN';
INCLUDE:                               'INCLUDE';
INCREMENT:                             'INCREMENT';
INDEX:                                 'INDEX';
INNER:                                 'INNER';
INSERT:                                'INSERT';
INSTEAD:                               'INSTEAD';
INTERSECT:                             'INTERSECT';
INTO:                                  'INTO';
IPV4_ADDR:                              IPV4_OCTECT DOT IPV4_OCTECT DOT IPV4_OCTECT DOT IPV4_OCTECT;
IPV6_ADDR:                          [0-9A-F][0-9A-F][0-9A-F][0-9A-F][:][0-9A-F][0-9A-F][0-9A-F][0-9A-F][:][0-9A-F][0-9A-F][0-9A-F][0-9A-F][:][0-9A-F][0-9A-F][0-9A-F][0-9A-F][:][0-9A-F][0-9A-F][0-9A-F][0-9A-F][:][0-9A-F][0-9A-F][0-9A-F][0-9A-F][:][0-9A-F][0-9A-F][0-9A-F][0-9A-F][:][0-9A-F][0-9A-F][0-9A-F][0-9A-F];
IS:                                    'IS';
ISNULL:                                'ISNULL';
JOIN:                                  'JOIN';
KERBEROS:                              'KERBEROS';
KEY:                                   'KEY';
KILL:                                  'KILL';
LEFT:                                  'LEFT';
LIFETIME:                              'LIFETIME';
LIKE:                                  'LIKE';
LINENO:                                'LINENO';
LISTENER_IP:                           'LISTENER_IP';
LISTENER_PORT:                         'LISTENER_PORT';
LOAD:                                  'LOAD';
LOCAL_SERVICE_NAME:                    'LOCAL_SERVICE_NAME';
LOG:                                   'LOG';
MATCHED:                               'MATCHED';
MASTER:                                'MASTER';
MAXVALUE:                              'MAXVALUE';
MAX_SIZE:                              'MAX_SIZE';
MAX_OUTSTANDING_IO_PER_VOLUME:         'MAX_OUTSTANDING_IO_PER_VOLUME';
MEMBER:                                'MEMBER';
MERGE:                                 'MERGE';
MESSAGE_FORWARDING:                    'MESSAGE_FORWARDING';
MESSAGE_FORWARD_SIZE:                  'MESSAGE_FORWARD_SIZE';
MINVALUE:                              'MINVALUE';
MUST_CHANGE:                           'MUST_CHANGE';
NATIONAL:                              'NATIONAL';
NEGOTIATE:                             'NEGOTIATE';
NOCHECK:                               'NOCHECK';
NONCLUSTERED:                          'NONCLUSTERED';
NONE:                                  'NONE';
NOT:                                   'NOT';
NTLM:                                  'NTLM';
NULL:                                  'NULL';
NULLIF:                                'NULLIF';
OF:                                    'OF';
OFF:                                   'OFF';
OFFSETS:                               'OFFSETS';
OLD_PASSWORD:                          'OLD_PASSWORD';
ON:                                    'ON';
ON_FAILURE:                            'ON_FAILURE';
OPEN:                                  'OPEN';
OPENDATASOURCE:                        'OPENDATASOURCE';
OPENQUERY:                             'OPENQUERY';
OPENROWSET:                            'OPENROWSET';
OPENXML:                               'OPENXML';
OPTION:                                'OPTION';
OR:                                    'OR';
ORDER:                                 'ORDER';
OUTER:                                 'OUTER';
OVER:                                  'OVER';
PAGE:                                  'PAGE';
PARAM_NODE:                            'PARAM_NODE';
PARTIAL:                               'PARTIAL';
PASSWORD:                              'PASSWORD';
PERCENT:                               'PERCENT';
PERMISSION_SET:                        'PERMISSION_SET';
PIVOT:                                 'PIVOT';
PLAN:                                  'PLAN';
PRECISION:                             'PRECISION';
PRIMARY:                               'PRIMARY';
PRINT:                                 'PRINT';
PROC:                                  'PROC';
PROCEDURE:                             'PROCEDURE';
PROCESS:                               'PROCESS';
PUBLIC:                                'PUBLIC';
RAISERROR:                             'RAISERROR';
RAW:                                   'RAW';
READ:                                  'READ';
READTEXT:                              'READTEXT';
RECONFIGURE:                           'RECONFIGURE';
REFERENCES:                            'REFERENCES';
REGENERATE:                            'REGENERATE';
RELATED_CONVERSATION:                  'RELATED_CONVERSATION';
RELATED_CONVERSATION_GROUP:            'RELATED_CONVERSATION_GROUP';
REPLICATION:                           'REPLICATION';
REQUIRED:                              'REQUIRED';
RESET:                                 'RESET';
RESTART:                               'RESTART';
RESTORE:                               'RESTORE';
RESTRICT:                              'RESTRICT';
RESUME:                                'RESUME';
RETURN:                                'RETURN';
RETURNS:                               'RETURNS';
REVERT:                                'REVERT';
REVOKE:                                'REVOKE';
RIGHT:                                 'RIGHT';
ROLLBACK:                              'ROLLBACK';
ROLE:                                  'ROLE';
ROWCOUNT:                              'ROWCOUNT';
ROWGUIDCOL:                            'ROWGUIDCOL';
SAFETY:                                'SAFETY';
RULE:                                  'RULE';
SAFE:                                  'SAFE';
SAVE:                                  'SAVE';
SCHEMA:                                'SCHEMA';
SCHEME:                                'SCHEME';
SECURITYAUDIT:                         'SECURITYAUDIT';
SELECT:                                'SELECT';
SEMANTICKEYPHRASETABLE:                'SEMANTICKEYPHRASETABLE';
SEMANTICSIMILARITYDETAILSTABLE:        'SEMANTICSIMILARITYDETAILSTABLE';
SEMANTICSIMILARITYTABLE:               'SEMANTICSIMILARITYTABLE';
SEQUENCE:                              'SEQUENCE';
SERVER:                                'SERVER';
SERVICE:                               'SERVICE';
SERVICE_BROKER:                        'SERVICE_BROKER';
SESSION_USER:                          'SESSION_USER';
SET:                                   'SET';
SETUSER:                               'SETUSER';
SHUTDOWN:                              'SHUTDOWN';
SOFTNUMA:                              'SOFTNUMA';
SOME:                                  'SOME';
SOURCE:                                'SOURCE';
SPECIFICATION:                         'SPECIFICATION';
SQLDUMPERFLAGS:                        'SQLDUMPERFLAGS';
SQLDUMPERPATH:                         'SQLDUMPERPATH';
SQLDUMPERTIMEOUT:                      'SQLDUMPERTIMEOUTS';
STATISTICS:                            'STATISTICS';
STATE:                                 'STATE';
STARTED:                               'STARTED';
STOPPED:                               'STOPPED';
SUPPORTED:                             'SUPPORTED';
SYSTEM_USER:                           'SYSTEM_USER';
TABLE:                                 'TABLE';
TABLESAMPLE:                           'TABLESAMPLE';
TARGET:                                'TARGET';
TCP:                                   'TCP';
TEXTSIZE:                              'TEXTSIZE';
THEN:                                  'THEN';
TO:                                    'TO';
TOP:                                   'TOP';
TRAN:                                  'TRAN';
TRANSACTION:                           'TRANSACTION';
TRANSFER:                              'TRANSFER';
TRIGGER:                               'TRIGGER';
TRUNCATE:                              'TRUNCATE';
TSEQUAL:                               'TSEQUAL';
UNCHECKED:                             'UNCHECKED';
UNION:                                 'UNION';
UNIQUE:                                'UNIQUE';
UNLOCK:                                'UNLOCK';
UNPIVOT:                               'UNPIVOT';
UNSAFE:                                'UNSAFE';
UPDATE:                                'UPDATE';
UPDATETEXT:                            'UPDATETEXT';
USE:                                   'USE';
USED:                                  'USED';
USER:                                  'USER';
VALUES:                                'VALUES';
VARYING:                               'VARYING';
VERBOSELOGGING:                        'VERBOSELOGGING';
VIEW:                                  'VIEW';
VISIBILITY:                            'VISIBILITY';
WAITFOR:                               'WAITFOR';
WHEN:                                  'WHEN';
WHERE:                                 'WHERE';
WHILE:                                 'WHILE';
WINDOWS:                               'WINDOWS';
WITH:                                  'WITH';
WITHIN:                                'WITHIN';
WITNESS:                               'WITNESS';
WRITETEXT:                             'WRITETEXT';

// Additional keywords (they can be id).
ABSOLUTE:                              'ABSOLUTE';
ACCENT_SENSITIVITY:                    'ACCENT_SENSITIVITY';
ACTION:                                'ACTION';
ACTIVE:                                'ACTIVE';
ACTIVATION:                            'ACTIVATION';
AES_128:                               'AES_128';
AES_192:                               'AES_192';
AES_256:                               'AES_256';
AFFINITY:                              'AFFINITY';
AFTER:                                 'AFTER';
ALGORITHM:                             'ALGORITHM';
ALLOWED:                               'ALLOWED';
ALLOW_ENCRYPTED_VALUE_MODIFICATIONS:   'ALLOW_ENCRYPTED_VALUE_MODIFICATIONS';
ALLOW_SNAPSHOT_ISOLATION:              'ALLOW_SNAPSHOT_ISOLATION';
ANSI_NULLS:                            'ANSI_NULLS';
ANSI_NULL_DEFAULT:                     'ANSI_NULL_DEFAULT';
ANSI_PADDING:                          'ANSI_PADDING';
ANSI_WARNINGS:                         'ANSI_WARNINGS';
APPLICATION_LOG:                       'APPLICATION_LOG';
APPLY:                                 'APPLY';
ARITHABORT:                            'ARITHABORT';
ASSEMBLY:                              'ASSEMBLY';
AUDIT:                                 'AUDIT';
AUTO:                                  'AUTO';
AUTO_CLEANUP:                          'AUTO_CLEANUP';
AUTO_CLOSE:                            'AUTO_CLOSE';
AUTO_CREATE_STATISTICS:                'AUTO_CREATE_STATISTICS';
AUTO_SHRINK:                           'AUTO_SHRINK';
AUTO_UPDATE_STATISTICS:                'AUTO_UPDATE_STATISTICS';
AUTO_UPDATE_STATISTICS_ASYNC:          'AUTO_UPDATE_STATISTICS_ASYNC';
AVAILABILITY:                          'AVAILABILITY';
AVG:                                   'AVG';
BEGIN_DIALOG:                          'BEGIN_DIALOG';
BINARY_BASE64:                         'BINARY BASE64';
BINARY_CHECKSUM:                       'BINARY_CHECKSUM';
BINDING:                               'BINDING';
BLOB_STORAGE:                          'BLOB_STORAGE';
BROKER:                                'BROKER';
BULK_LOGGED:                           'BULK_LOGGED';
CALLER:                                'CALLER';
CAST:                                  'TRY_'? 'CAST';
CATALOG:                               'CATALOG';
CATCH:                                 'CATCH';
CHANGE_RETENTION:                      'CHANGE_RETENTION';
CHANGE_TRACKING:                       'CHANGE_TRACKING';
CHECKSUM:                              'CHECKSUM';
CHECKSUM_AGG:                          'CHECKSUM_AGG';
CLEANUP:                               'CLEANUP';
COLLECTION:                            'COLLECTION';
COLUMN_MASTER_KEY:                     'COLUMN_MASTER_KEY';
COMMITTED:                             'COMMITTED';
COMPATIBILITY_LEVEL:                   'COMPATIBILITY_LEVEL';
CONCAT:                                'CONCAT';
CONCAT_NULL_YIELDS_NULL:               'CONCAT_NULL_YIELDS_NULL';
CONTENT:                               'CONTENT';
CONTROL:                               'CONTROL';
COOKIE:                                'COOKIE';
COUNT:                                 'COUNT';
COUNT_BIG:                             'COUNT_BIG';
CPU:                                   'CPU';
CREATE_NEW:                            'CREATE_NEW';
CREATION_DISPOSITION:                  'CREATION_DISPOSITION';
CREDENTIAL:                            'CREDENTIAL';
CRYPTOGRAPHIC:                         'CRYPTOGRAPHIC';
CURSOR_CLOSE_ON_COMMIT:                'CURSOR_CLOSE_ON_COMMIT';
CURSOR_DEFAULT:                        'CURSOR_DEFAULT';
DATEADD:                               'DATEADD';
DATEDIFF:                              'DATEDIFF';
DATENAME:                              'DATENAME';
DATEPART:                              'DATEPART';
DATE_CORRELATION_OPTIMIZATION:         'DATE_CORRELATION_OPTIMIZATION';
DAYS:                                  'DAYS';
DB_CHAINING:                           'DB_CHAINING';
DECRYPTION:                            'DECRYPTION';
DEFAULT_DOUBLE_QUOTE:                  ["]'DEFAULT'["];
DEFAULT_FULLTEXT_LANGUAGE:             'DEFAULT_FULLTEXT_LANGUAGE';
DEFAULT_LANGUAGE:                      'DEFAULT_LANGUAGE';
DELAY:                                 'DELAY';
DELAYED_DURABILITY:                    'DELAYED_DURABILITY';
DELETED:                               'DELETED';
DENSE_RANK:                            'DENSE_RANK';
DES:                                   'DES';
DESX:                                  'DESX';
DESCRIPTION:                           'DESCRIPTION';
DIALOG:                                'DIALOG';
DIRECTORY_NAME:                        'DIRECTORY_NAME';
DISABLE:                               'DISABLE';
DISABLED:                              'DISABLED'; 
DISABLE_BROKER:                        'DISABLE_BROKER';
DISK_DRIVE:                            [A-Z][:];
DOCUMENT:                              'DOCUMENT';
DYNAMIC:                               'DYNAMIC';
EMERGENCY:                             'EMERGENCY';
EMPTY:                                 'EMPTY';
ENABLE:                                'ENABLE';
ENABLE_BROKER:                         'ENABLE_BROKER';
ENCRYPTED_VALUE:                       'ENCRYPTED_VALUE';
ENCRYPTION:                            'ENCRYPTION';
ERROR_BROKER_CONVERSATIONS:            'ERROR_BROKER_CONVERSATIONS';
EXECUTABLE:                            'EXECUTABLE';
EXIST:                                 'EXIST';
EXPAND:                                'EXPAND';
EXPIRY_DATE:                           'EXPIRY_DATE';
EXPLICIT:                              'EXPLICIT';
FAILURE:                               'FAILURE';
FAIL_OPERATION:                        'FAIL_OPERATION';
FAST:                                  'FAST';
FAST_FORWARD:                          'FAST_FORWARD';
FILEGROUP:                             'FILEGROUP';
FILEGROWTH:                            'FILEGROWTH';
FILEPATH:                              'FILEPATH';
FILESTREAM:                            'FILESTREAM';
FIRST:                                 'FIRST';
FIRST_VALUE:                           'FIRST_VALUE';
FOLLOWING:                             'FOLLOWING';
FORCE:                                 'FORCE';
FORCED:                                'FORCED';
FORWARD_ONLY:                          'FORWARD_ONLY';
FULLSCAN:                              'FULLSCAN';
FULLTEXT:                              'FULLTEXT';
GB:                                    'GB';
GETDATE:                               'GETDATE';
GETUTCDATE:                            'GETUTCDATE';
GLOBAL:                                'GLOBAL';
GO:                                    'GO';
GROUPING:                              'GROUPING';
GROUPING_ID:                           'GROUPING_ID';
GROUP_MAX_REQUESTS:                    'GROUP_MAX_REQUESTS';
HADR:                                  'HADR';
HASH:                                  'HASH';
HIGH:                                  'HIGH';
HONOR_BROKER_PRIORITY:                 'HONOR_BROKER_PRIORITY';
HOURS:                                 'HOURS'; 
IDENTITY_VALUE:                        'IDENTITY_VALUE';
IGNORE_NONCLUSTERED_COLUMNSTORE_INDEX: 'IGNORE_NONCLUSTERED_COLUMNSTORE_INDEX';
IMMEDIATE:                             'IMMEDIATE';
IMPERSONATE:                           'IMPERSONATE';
IMPORTANCE:                            'IMPORTANCE';
INCREMENTAL:                           'INCREMENTAL';
INITIATOR:                             'INITIATOR';
INPUT:                                 'INPUT';
INSENSITIVE:                           'INSENSITIVE';
INSERTED:                              'INSERTED';
ISOLATION:                             'ISOLATION';
KB:                                    'KB';
KEEP:                                  'KEEP';
KEEPFIXED:                             'KEEPFIXED';
KEYSET:                                'KEYSET';
KEYS:                                  'KEYS';
KEY_SOURCE:                            'KEY_SOURCE';
LAG:                                   'LAG';
LAST:                                  'LAST';
LAST_VALUE:                            'LAST_VALUE';
LEAD:                                  'LEAD';
LEVEL:                                 'LEVEL';
LIST:                                  'LIST';
LOB_COMPACTION:                        'LOB_COMPACTION';
LOCAL:                                 'LOCAL';
LOCATION:                              'LOCATION';
LOCK_ESCALATION:                       'LOCK_ESCALATION';
LOGIN:                                 'LOGIN';
LOOP:                                  'LOOP';
LOW:                                   'LOW';
MARK:                                  'MARK';
MAX:                                   'MAX';
MAX_CPU_PERCENT:                       'MAX_CPU_PERCENT';
MAX_FILES:                             'MAX_FILES';
MAX_MEMORY_PERCENT:                    'MAX_MEMORY_PERCENT';
MAX_PROCESSES:                         'MAX_PROCESSES';
MAX_QUEUE_READERS:                     'MAX_QUEUE_READERS';
MAX_ROLLOVER_FILES:                    'MAX_ROLLOVER_FILES';
MAXDOP:                                'MAXDOP';
MAX_DOP:                               'MAX_DOP';
MAXRECURSION:                          'MAXRECURSION';
MAXSIZE:                               'MAXSIZE';
MEDIUM:                                'MEDIUM';
MESSAGE:                               'MESSAGE';
MB:                                    'MB';
MEMORY_OPTIMIZED_DATA:                 'MEMORY_OPTIMIZED_DATA';
MIN:                                   'MIN';
MINUTES:                               'MINUTES';
MIN_ACTIVE_ROWVERSION:                 'MIN_ACTIVE_ROWVERSION';
MIXED_PAGE_ALLOCATION:                 'MIXED_PAGE_ALLOCATION';
MODIFY:                                'MODIFY';
MOVE:                                  'MOVE';
MULTI_USER:                            'MULTI_USER';
NAME:                                  'NAME';
NESTED_TRIGGERS:                       'NESTED_TRIGGERS';
NEW_ACCOUNT:                           'NEW_ACCOUNT';
NEW_BROKER:                            'NEW_BROKER';
NEW_PASSWORD:                          'NEW_PASSWORD';
NEXT:                                  'NEXT';
NOCOUNT:                               'NOCOUNT';
NOEXPAND:                              'NOEXPAND';
NODES:                                 'NODES';
NON_TRANSACTED_ACCESS:                 'NON_TRANSACTED_ACCESS';
NORECOMPUTE:                           'NORECOMPUTE';
NO:                                    'NO';
NO_WAIT:                               'NO_WAIT';
NTILE:                                 'NTILE';
NUMANODE:                              'NUMANODE';
NUMBER:                                'NUMBER';
NUMERIC_ROUNDABORT:                    'NUMERIC_ROUNDABORT';
OBJECT:                                'OBJECT';
OFFLINE:                               'OFFLINE';
OFFSET:                                'OFFSET';
OLD_ACCOUNT:                           'OLD_ACCOUNT';
ONLINE:                                'ONLINE';
ONLY:                                  'ONLY';
OPEN_EXISTING:                         'OPEN_EXISTING';
OPTIMISTIC:                            'OPTIMISTIC';
OPTIMIZE:                              'OPTIMIZE';
OUT:                                   'OUT';
OUTPUT:                                'OUTPUT';
OWNER:                                 'OWNER';
PAGE_VERIFY:                           'PAGE_VERIFY';
PARAMETERIZATION:                      'PARAMETERIZATION';
PARTITION:                             'PARTITION';
PARTNER:                               'PARTNER';
PATH:                                  'PATH';
POOL:                                  'POOL';
POISON_MESSAGE_HANDLING:               'POISON_MESSAGE_HANDLING';
PRECEDING:                             'PRECEDING';
PRIOR:                                 'PRIOR';
PRIORITY:                              'PRIORITY';
PRIORITY_LEVEL:                        'PRIORITY_LEVEL';
PRIVATE:                               'PRIVATE';
PRIVATE_KEY:                           'PRIVATE_KEY';
PRIVILEGES:                            'PRIVILEGES';
PROCEDURE_NAME:                        'PROCEDURE_NAME';
PROPERTY:                              'PROPERTY';
PROVIDER:                              'PROVIDER';
PROVIDER_KEY_NAME:                     'PROVIDER_KEY_NAME';
QUEUE:                                 'QUEUE';
QUEUE_DELAY:                           'QUEUE_DELAY';
QUERY:                                 'QUERY';
QUOTED_IDENTIFIER:                     'QUOTED_IDENTIFIER';
RANGE:                                 'RANGE';
RANK:                                  'RANK';
RC2:                                   'RC2';
RC4:                                   'RC4';
RC4_128:                               'RC4_128';
READONLY:                              'READONLY';
READ_COMMITTED_SNAPSHOT:               'READ_COMMITTED_SNAPSHOT';
READ_ONLY:                             'READ_ONLY';
READ_WRITE:                            'READ_WRITE';
REBUILD:                               'REBUILD';
RECOMPILE:                             'RECOMPILE';
RECEIVE:                               'RECEIVE';
RECOVERY:                              'RECOVERY';
RECURSIVE_TRIGGERS:                    'RECURSIVE_TRIGGERS';
RELATIVE:                              'RELATIVE';
REMOVE:                                'REMOVE';
REORGANIZE:                            'REORGANIZE';
REMOTE:                                'REMOTE';
REMOTE_SERVICE_NAME:                   'REMOTE_SERVICE_NAME';
REPEATABLE:                            'REPEATABLE';
REQUEST_MAX_MEMORY_GRANT_PERCENT:      'REQUEST_MAX_MEMORY_GRANT_PERCENT';
REQUEST_MAX_CPU_TIME_SEC:              'REQUEST_MAX_CPU_TIME_SEC';
REQUEST_MEMORY_GRANT_TIMEOUT_SEC:      'REQUEST_MEMORY_GRANT_TIMEOUT_SEC';
RESERVE_DISK_SPACE:                    'RESERVE_DISK_SPACE';
RESOURCE:                              'RESOURCE';
RESOURCE_MANAGER_LOCATION:             'RESOURCE_MANAGER_LOCATION';
RESTRICTED_USER:                       'RESTRICTED_USER'; 
RETENTION:                             'RETENTION';
ROBUST:                                'ROBUST';
ROOT:                                  'ROOT';
ROUTE:                                 'ROUTE';
ROW:                                   'ROW';
ROWGUID:                               'ROWGUID';
ROWS:                                  'ROWS';
ROW_NUMBER:                            'ROW_NUMBER';
SAMPLE:                                'SAMPLE';
SCHEMABINDING:                         'SCHEMABINDING';
SCROLL:                                'SCROLL';
SCROLL_LOCKS:                          'SCROLL_LOCKS';
SEARCH:                                'SEARCH';
SECONDS:                               'SECONDS';
SECRET:                                'SECRET';
SECURITY_LOG:                          'SECURITY_LOG';
SELF:                                  'SELF';
SEND:                                  'SEND';
SENT:                                  'SENT';
SERIALIZABLE:                          'SERIALIZABLE';
SETERROR:                              'SETERROR';
SHOWPLAN:                              'SHOWPLAN';
SIMPLE:                                'SIMPLE';
SINGLE_USER:                           'SINGLE_USER'; 
SIZE:                                  'SIZE';
SNAPSHOT:                              'SNAPSHOT';
SPATIAL_WINDOW_MAX_CELLS:              'SPATIAL_WINDOW_MAX_CELLS';
START_DATE:                            'START_DATE';
STATIC:                                'STATIC';
STATS_STREAM:                          'STATS_STREAM';
STATUS:                                'STATUS';
STDEV:                                 'STDEV';
STDEVP:                                'STDEVP';
STOPLIST:                              'STOPLIST';
SUBJECT:                               'SUBJECT';
SUSPEND:                               'SUSPEND';
STUFF:                                 'STUFF';
SUM:                                   'SUM';
SYMMETRIC:                             'SYMMETRIC';
TAKE:                                  'TAKE';
TARGET_RECOVERY_TIME:                  'TARGET_RECOVERY_TIME';
TB:                                    'TB';
TEXTIMAGE_ON:                          'TEXTIMAGE_ON';
THROW:                                 'THROW';
TIES:                                  'TIES';
TIME:                                  'TIME';
TIMER:                                 'TIMER';
TIMEOUT:                               'TIMEOUT';
TORN_PAGE_DETECTION:                   'TORN_PAGE_DETECTION';
TRANSFORM_NOISE_WORDS:                 'TRANSFORM_NOISE_WORDS';
TRIPLE_DES:                            'TRIPLE_DES';
TRIPLE_DES_3KEY:                       'TRIPLE_DES_3KEY';
TRUSTWORTHY:                           'TRUSTWORTHY';
TRY:                                   'TRY';
TWO_DIGIT_YEAR_CUTOFF:                 'TWO_DIGIT_YEAR_CUTOFF';
TYPE:                                  'TYPE';
TYPE_WARNING:                          'TYPE_WARNING';
UNBOUNDED:                             'UNBOUNDED';
UNCOMMITTED:                           'UNCOMMITTED';
UNKNOWN:                               'UNKNOWN';
UNLIMITED:                             'UNLIMITED';
USING:                                 'USING';
VALIDATION:                            'VALIDATION';
VALID_XML:                             'VALID_XML';
VALUE:                                 'VALUE';
VAR:                                   'VAR';
VARP:                                  'VARP';
VIEWS:                                 'VIEWS';
VIEW_METADATA:                         'VIEW_METADATA';
WELL_FORMED_XML:                       'WELL_FORMED_XML';
WORK:                                  'WORK';
WORKLOAD:                              'WORKLOAD';
XML:                                   'XML';
XMLNAMESPACES:                         'XMLNAMESPACES';

DOLLAR_ACTION:                         '$ACTION';

SPACE:              [ \t\r\n]+    -> skip;
COMMENT:            '/*' .*? '*/' -> channel(HIDDEN);
LINE_COMMENT:       '--' ~[\r\n]* -> channel(HIDDEN);

// TODO: ID can be not only Latin.
DOUBLE_QUOTE_ID:    '"' ~'"'+ '"';
SINGLE_QUOTE:       '\'';
SQUARE_BRACKET_ID:  '[' ~']'+ ']';
LOCAL_ID:           '@' ([A-Z_$@#0-9] | FullWidthLetter)+;
DECIMAL:             DEC_DIGIT+;
ID:                  ( [A-Z_#] | FullWidthLetter) ( [A-Z_#$@0-9] | FullWidthLetter )*;
QUOTED_URL:          '\''([A-Z][A-Z]+[:]) '//'(([A-Z]+[.]|[A-Z]+)|IPV4_ADDR) [:] DECIMAL '\'';
QUOTED_HOST_AND_PORT:'\''(([A-Z]+[.]|[A-Z]+)|IPV4_ADDR) ([:] DECIMAL) '\'';
STRING:              'N'? '\'' (~'\'' | '\'\'')* '\'';
BINARY:              '0' 'X' HEX_DIGIT*;
FLOAT:               DEC_DOT_DEC;
REAL:                (DECIMAL | DEC_DOT_DEC) ('E' [+-]? DEC_DIGIT+);

EQUAL:               '=';

GREATER:             '>';
LESS:                '<';
EXCLAMATION:         '!';

PLUS_ASSIGN:         '+=';
MINUS_ASSIGN:        '-=';
MULT_ASSIGN:         '*=';
DIV_ASSIGN:          '/=';
MOD_ASSIGN:          '%=';
AND_ASSIGN:          '&=';
XOR_ASSIGN:          '^=';
OR_ASSIGN:           '|=';

DOT:                 '.';
UNDERLINE:           '_';
AT:                  '@';
SHARP:               '#';
DOLLAR:              '$';
LR_BRACKET:          '(';
RR_BRACKET:          ')';
COMMA:               ',';
SEMI:                ';';
COLON:               ':';
STAR:                '*';
DIVIDE:              '/';
MODULE:              '%';
PLUS:                '+';
MINUS:               '-';
BIT_NOT:             '~';
BIT_OR:              '|';
BIT_AND:             '&';
BIT_XOR:             '^';

fragment LETTER:       [A-Z_];
fragment IPV6_OCTECT:  [0-9A-F][0-9A-F][0-9A-F][0-9A-F];
IPV4_OCTECT:           [0-9]?[0-9]?[0-9];
fragment DEC_DOT_DEC:  (DEC_DIGIT+ '.' DEC_DIGIT+ |  DEC_DIGIT+ '.' | '.' DEC_DIGIT+);
fragment HEX_DIGIT:    [0-9A-F];
fragment DEC_DIGIT:    [0-9];

fragment FullWidthLetter
    : '\u00c0'..'\u00d6' 
    | '\u00d8'..'\u00f6' 
    | '\u00f8'..'\u00ff' 
    | '\u0100'..'\u1fff' 
    | '\u2c00'..'\u2fff' 
    | '\u3040'..'\u318f' 
    | '\u3300'..'\u337f' 
    | '\u3400'..'\u3fff' 
    | '\u4e00'..'\u9fff' 
    | '\ua000'..'\ud7ff' 
    | '\uf900'..'\ufaff' 
    | '\uff00'..'\ufff0'
    // | '\u10000'..'\u1F9FF'  //not support four bytes chars
    // | '\u20000'..'\u2FA1F'
    ;
