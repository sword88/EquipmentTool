S1F0: 'S1F0' /* Name=AbortTransaction_S1 */
.
S1F1: 'S1F1' W /* Name=AreYouThere */
.
S1F2: 'S1F2' /* Name=OnlineData */
<L [2]
    <A [8] 'ifabSecs' > /* Name=MDLN */
    <A [7] '1.0.0.0' > /* Name=SOFTREV */
>
.
S1F3: 'S1F3' W /* Name=SelectedEquipmentStatusRequest */
<L [1]
    <U4 [1] 0 > /* Name=SVID */
>
.
S1F4: 'S1F4' /* Name=SelectedEquipmentStatusData */
<L [1]
    <B [1] 0x00 > /* Name=SV */
>
.
FSR: 'S1F5' W /* Name=FormattedStatusRequest */
<B [1] 0x00 > /* Name=SFCD */
.
FSD: 'S1F6' /* Name=FormattedStatusData */
.
FFR: 'S1F7' W /* Name=FixedFormRequest */
<B [1] 0x00 > /* Name=SFCD */
.
FFD: 'S1F8' /* Name=FixedFormData */
.
TSR: 'S1F9' W /* Name=MaterialTransferStatusRequest */
.
TSD: 'S1F10' /* Name=MaterialTransferStatusData */
<L [2]
    <B [3] 0x01 0x02 0x03 > /* Name=TSIP */
    <B [3] 0x01 0x02 0x03 > /* Name=TSOP */
>
.
SVNR: 'S1F11' W /* Name=StatusVariableNamelistRequest */
<L [1]
    <U4 [1] 0 > /* Name=SVID */
>
.
SVNRR: 'S1F12' /* Name=StatusVariableNamelistReply */
<L [1]
    <L [3]
        <U4 [1] 0 > /* Name=SVID */
        <A [6] 'SVName' > /* Name=SVNAME */
        <A [1] ' ' > /* Name=UNITS */
    >
>
.
CR: 'S1F13' W /* Name=EstablishCommunicationsRequest */
<L [2]
    <A [8] 'ifabSecs' > /* Name=MDLN */
    <A [7] '1.0.0.0' > /* Name=SOFTREV */
>
.
CR_H: 'S1F13' W /* Name=EstablishCommunicationsRequest_Host */
<L [0]
>
.
CRA: 'S1F14' /* Name=EstablishCommunicationsRequestAck_Ack */
<L [2]
    <B [1] 0x00 > /* Name=COMMACK Mapping=Accepted */
    <L [2]
        <A [8] 'ifabSecs' > /* Name=MDLN */
        <A [7] '1.0.0.0' > /* Name=SOFTREV */
    >
>
.
CRA_H: 'S1F14' /* Name=EstablishCommunicationsRequestAck_Host_Ack */
<L [2]
    <B [1] 0x00 > /* Name=COMMACK Mapping=Accepted */
    <L [0]
    >
>
.
CRA_Nak_H: 'S1F14' /* Name=EstablishCommunicationsRequestAck_Host_Nak */
<L [2]
    <B [1] 0x01 > /* Name=COMMACK Mapping=Denied, Try Again */
    <L [0]
    >
>
.
CRA_Nak: 'S1F14' /* Name=EstablishCommunicationsRequestAck_Nak */
<L [2]
    <B [1] 0x01 > /* Name=COMMACK Mapping=Denied, Try Again */
    <L [2]
        <A [8] 'ifabSecs' > /* Name=MDLN */
        <A [7] '1.0.0.0' > /* Name=SOFTREV */
    >
>
.
ROFL: 'S1F15' W /* Name=RequestOffLine */
.
OFLA: 'S1F16' /* Name=OffLineAck_Ack */
<B [1] 0x00 > /* Name=OFLACK Mapping=OK */
.
OFLA_Nak: 'S1F16' /* Name=OffLineAck_Nak */
<B [0] > /* Name=OFLACK */
.
RONL: 'S1F17' W /* Name=RequestOnLine */
.
ONLA: 'S1F18' /* Name=OnLineAck_Ack */
<B [1] 0x00 > /* Name=ONLACK Mapping=Accepted */
.
ONLA_Nak: 'S1F18' /* Name=OnLineAck_Nak */
<B [1] 0x01 > /* Name=ONLACK Mapping=Online Not Allowed */
.
GA: 'S1F19' W /* Name=GetAttribute */
<L [3]
    <A [1] '0' > /* Name=OBJTYPE */
    <L [1]
        <A [1] '0' > /* Name=OBJID */
    >
    <L [1]
        <A [1] '0' > /* Name=ATTRID */
    >
>
.
AD: 'S1F20' /* Name=AttributeData */
<L [2]
    <L [1]
        <B [1] 0x00 > /* Name=ATTRDATA */
    >
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [1] '0' > /* Name=ERRTEXT */
        >
    >
>
.
ABT_S2: 'S2F0' /* Name=AbortTransaction_S2 */
.
SPI: 'S2F1' W /* Name=ServiceProgramLoadInquire */
<L [2]
    <A [1] '0' > /* Name=SPID */
    <I2 [1] 0 > /* Name=LENGTH */
>
.
SPG: 'S2F2' /* Name=ServiceProgramLoadGrant_Ack */
<B [1] 0x00 > /* Name=GRANT Mapping=Permission Granted */
.
SPG_Nak: 'S2F2' /* Name=ServiceProgramLoadGrant_Nak */
<B [1] 0x01 > /* Name=GRANT Mapping=Busy, Try Again */
.
SPS: 'S2F3' W /* Name=ServiceProgramSend */
<B [1] 0x00 > /* Name=SPD */
.
SPA: 'S2F4' /* Name=ServiceProgramAck_Ack */
<B [1] 0x00 > /* Name=SPAACK Mapping=Everything correct */
.
SPA_Nak: 'S2F4' /* Name=ServiceProgramAck_Nak */
<B [1] 0x01 > /* Name=SPAACK_Nak Mapping=Invalid data */
.
SPR: 'S2F5' W /* Name=ServiceProgramLoadRequest */
<A [1] '0' > /* Name=SPID */
.
SPD: 'S2F6' /* Name=ServiceProgramLoadData */
<B [1] 0x00 > /* Name=SPD */
.
CSS: 'S2F7' W /* Name=ServiceProgramRunSend */
<A [1] '0' > /* Name=SPID */
.
CSA: 'S2F8' /* Name=ServiceProgramRunAck_Ack */
<B [1] 0x00 > /* Name=CSAACK Mapping=Everything correct */
.
CSA_Nak: 'S2F8' /* Name=ServiceProgramRunAck_Nak */
<B [1] 0x01 > /* Name=CSAACK Mapping=Busy */
.
SRR: 'S2F9' W /* Name=ServiceProgramResultRequest */
<A [1] '0' > /* Name=SPID */
.
SRD: 'S2F10' /* Name=ServiceProgramResultData */
<B [1] 0x00 > /* Name=SPR */
.
SDR: 'S2F11' W /* Name=ServiceProgramDirectoryRequest */
.
SDD: 'S2F12' /* Name=ServiceProgramDirectoryData */
<L [1]
    <A [1] '0' > /* Name=SPID */
>
.
ECR: 'S2F13' W /* Name=EquipmentConstantRequest */
<L [1]
    <I2 [0] > /* Name=ECID */
>
.
ECD: 'S2F14' /* Name=EquipmentConstantData */
<L [1]
    <B [1] 0x00 > /* Name=ECV */
>
.
ECS: 'S2F15' W /* Name=NewEquipmentConstantSend */
<L [1]  /* Name=ECVList */
    <L [2]  /* Name=ECVPair */
        <A [1] '0' > /* Name=ECID */
        <B [1] 0x00 > /* Name=ECV */
    >
>
.
ECA: 'S2F16' /* Name=EquipmentConstantAck_Ack */
<B [1] 0x00 > /* Name=EAC Mapping=Acknowledge */
.
ECA_Nak: 'S2F16' /* Name=EquipmentConstantAck_Nak */
<B [1] 0x01 > /* Name=EAC_Nak Mapping=Denied. At least one constant does not exist */
.
DTR: 'S2F17' W /* Name=DateTimeRequest */
.
DTD: 'S2F18' /* Name=DateTimeData */
<A [0] ''> /* Name=TIME */
.
RIS: 'S2F19' W /* Name=ResetInitializeSend */
<I1 [1] 1 > /* Name=RIC */
.
RIA: 'S2F20' /* Name=ResetAck_Ack */
<B [1] 0x00 > /* Name=RAC */
.
RIA_Nak: 'S2F20' /* Name=ResetAck_Nak */
<I1 [1] 1 > /* Name=RAC_Nak */
.
RCS: 'S2F21' W /* Name=RemoteCommandSend */
<A [1] '0' > /* Name=RCMD */
.
RCA: 'S2F22' /* Name=RemoteCommandAck_Ack */
<U1 [1] 0 > /* Name=CMDA Mapping=Completed */
.
RCA_Nak: 'S2F22' /* Name=RemoteCommandAck_Nak */
<U1 [1] 2 > /* Name=CMDA Mapping=Cannot perform now */
.
TIS: 'S2F23' W /* Name=TraceInitializeSend */
<L [5]
    <U2 [1] 12 > /* Name=TRID */
    <A [0] ''> /* Name=DSPER */
    <U4 [0] > /* Name=TOTSMP */
    <U2 [0] > /* Name=REPGSZ */
    <L [1]
        <U2 [0] > /* Name=SVID */
    >
>
.
TIA: 'S2F24' /* Name=TraceInitializeAck_Ack */
<B [1] 0x00 > /* Name=TIAACK Mapping=OK */
.
TIA_Nak: 'S2F24' /* Name=TraceInitializeAck_Nak */
<B [1] 0x01 > /* Name=TIAACK Mapping=Too many SVIDs */
.
LDR: 'S2F25' W /* Name=LoopBackDiagnosticRequest */
<B [0] > /* Name=ABS */
.
LDD: 'S2F26' /* Name=LoopBackDiagnosticData */
<B [1] 0x00 > /* Name=ABS */
.
IPR: 'S2F27' W /* Name=InitiateProcessingRequest */
<L [3]
    <U2 [0] > /* Name=LOC */
    <A [12] 'A Recipe ID ' > /* Name=PPID */
    <L [1]
        <A [16] 'CAS002          ' > /* Name=MID */
    >
>
.
IPA: 'S2F28' /* Name=InitiateProcessingAck_Ack */
<U1 [1] 0 > /* Name=CMDA Mapping=Completed */
.
IPA_Nak: 'S2F28' /* Name=InitiateProcessingAck_Nak */
<U1 [1] 2 > /* Name=CMDA Mapping=Cannot perform now */
.
ECNR: 'S2F29' W /* Name=EquipmentConstantNamelistRequest */
<L [1]
    <A [0] ''> /* Name=ECID */
>
.
ECN: 'S2F30' /* Name=EquipmentConstantNamelist */
<L [1]
    <L [6]
        <A [1] '0' > /* Name=ECID */
        <A [1] '0' > /* Name=ECNAME */
        <B [1] 0x00 > /* Name=ECMIN */
        <B [1] 0x00 > /* Name=ECMAX */
        <B [1] 0x00 > /* Name=ECDEF */
        <A [1] '0' > /* Name=UNITS */
    >
>
.
DTS: 'S2F31' W /* Name=DateTimeSetRequest */
<A [0] ''> /* Name=TIME */
.
DTA: 'S2F32' /* Name=DateTimeSetAck_Ack */
<B [1] 0x00 > /* Name=TIACK Mapping=OK */
.
DTA_Nak: 'S2F32' /* Name=DateTimeSetAck_Nak */
<B [1] 0x01 > /* Name=TIACK_Nak Mapping=Error, not done */
.
S2F33DR: 'S2F33' W /* Name=DefineReport */
<L [2]
    <U2 [1] 0 > /* Name=DATAID */
    <L [1]  /* Name=ReportList */
        <L [2]
            <U2 [1] 0 > /* Name=RPTID */
            <L [1]  /* Name=VidList */
                <U2 [1] 0 > /* Name=VID */
            >
        >
    >
>
.
DelAllReports: 'S2F33' W /* Name=DefineReport_DeleteAllReports */
<L [2]
    <U2 [1] 0 > /* Name=DATAID */
    <L [0]  /* Name=ReportList */
    >
>
.
DelReportType: 'S2F33' W /* Name=DefineReport_DeleteReportType */
<L [2]
    <U2 [1] 0 > /* Name=DATAID */
    <L [1]  /* Name=ReportList */
        <L [2]
            <U2 [1] 0 > /* Name=RPTID */
            <L [0]  /* Name=VidList */
            >
        >
    >
>
.
DRA: 'S2F34' /* Name=DefineReportAck_Ack */
<B [1] 0x00 > /* Name=DRACK Mapping=Accept */
.
DRA_Nak: 'S2F34' /* Name=DefineReportAck_Nak */
<B [1] 0x01 > /* Name=DRACK Mapping=Denied. Insufficient space */
.
S2F35LER: 'S2F35' W /* Name=LinkEventReport */
<L [2]
    <U2 [1] 0 > /* Name=DATAID */
    <L [1]  /* Name=EventList */
        <L [2]
            <U2 [1] 0 > /* Name=CEID */
            <L [1]  /* Name=EventReportList */
                <U2 [1] 0 > /* Name=RPTID */
            >
        >
    >
>
.
LERA: 'S2F36' /* Name=LinkEventReportAck_Ack */
<B [1] 0x00 > /* Name=LRACK Mapping=Accepted */
.
LERA_Nak: 'S2F36' /* Name=LinkEventReportAck_Nak */
<B [1] 0x05 > /* Name=LRACK Mapping=Denied. At least one RPTID does not exist */
.
DERAll: 'S2F37' W /* Name=DisableAllEvents */
<L [2]
    <Boolean [1] False > /* Name=CEED */
    <L [0]
    >
>
.
S2F37EDER: 'S2F37' W /* Name=EnableDisableEventReport */
<L [2]
    <Boolean [1] True > /* Name=CEED */
    <L [1]  /* Name=EventList */
        <I2 [1] 0 > /* Name=CEID */
    >
>
.
EERA: 'S2F38' /* Name=EnableEventReportAck_Ack */
<B [1] 0x00 > /* Name=ERACK Mapping=Accepted */
.
EERA_Nak: 'S2F38' /* Name=EnableEventReportAck_Nak */
<B [1] 0x01 > /* Name=ERACK Mapping=Denied At leas tone CEID does not exist */
.
DMBI: 'S2F39' W /* Name=MultiBlockInquire_S2 */
<L [2]
    <U2 [1] 0 > /* Name=DATAID */
    <I2 [1] 0 > /* Name=DATALENGTH */
>
.
DMBG: 'S2F40' /* Name=MultiBlockGrant_S2_Ack */
<B [1] 0x00 > /* Name=GRANT Mapping=Permission Granted */
.
DMBG_Nak: 'S2F40' /* Name=MultiBlockGrant_S2_Nak */
<B [1] 0x01 > /* Name=GRANT Mapping=Busy,TryAgain */
.
HCS: 'S2F41' W /* Name=HostCommandSend */
<L [2]
    <A [4] 'RCmd' > /* Name=RCMD */
    <L [1]  /* Name=ParamList */
        <L [2]  /* Name=Param */
            <A [6] 'Param1' > /* Name=CPNAME */
            <B [1] 0x00 > /* Name=CPVAL */
        >
    >
>
.
HCA: 'S2F42' /* Name=HostCommandAck_Ack */
<L [2]
    <B [1] 0x00 > /* Name=HCACK Mapping=Acknowledge, command has been performed */
    <L [0]
    >
>
.
HCA_Nak: 'S2F42' /* Name=HostCommandAck_Nak */
<L [2]
    <B [1] 0x01 > /* Name=HCACK Mapping=Command does not exist */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=CPNAME */
            <B [1] 0x02 > /* Name=CPACK_Nak */
        >
    >
>
.
RSSF: 'S2F43' W /* Name=ResetSpoolingStreamsAndFunctions */
<L [1]
    <L [2]  /* Name=Streams */
        <U1 [1] 0 > /* Name=STRID */
        <L [1]  /* Name=Functions */
            <U1 [1] 0 > /* Name=FCNID */
        >
    >
>
.
DisableSpoolingForFunctions: 'S2F43' W /* Name=ResetSpoolingStreamsAndFunctions_DisableFunctions */
<L [1]
    <L [2]  /* Name=Streams */
        <U1 [1] 0 > /* Name=STRID */
        <L [0]  /* Name=Functions */
        >
    >
>
.
DisableSpoolingForAllStreams: 'S2F43' W /* Name=ResetSpoolingStreamsAndFunctions_DisableStreams */
<L [0]
>
.
RSA: 'S2F44' /* Name=ResetSpoolingAck_Ack */
<L [2]
    <B [1] 0x00 > /* Name=RSPACK Mapping=Accepted */
    <L [0]
    >
>
.
RSA_Nak: 'S2F44' /* Name=ResetSpoolingAck_Nak */
<L [2]
    <B [1] 0x01 > /* Name=RSPACK Mapping=Spooling setup rejected */
    <L [1]
        <L [3]
            <U1 [1] 0 > /* Name=STRID */
            <B [1] 0x01 > /* Name=STRACK_Nak */
            <L [1]
                <U1 [1] 0 > /* Name=FCNID */
            >
        >
    >
>
.
DVLA: 'S2F45' W /* Name=DefineVariableLimitAttributes */
<L [2]
    <U2 [1] 0 > /* Name=DATAID */
    <L [1]
        <L [2]
            <A [1] '0' > /* Name=VID */
            <L [1]
                <L [2]
                    <B [1] 0x00 > /* Name=LIMITID  */
                    <L [2]
                        <A [1] '0' > /* Name=UPPERDB */
                        <A [1] '0' > /* Name=LOWERDB */
                    >
                >
            >
        >
    >
>
.
DVLA: 'S2F45' W /* Name=DefineVariableLimitAttributes_ALimitUndefined */
<L [2]
    <U2 [1] 0 > /* Name=DATAID */
    <L [1]
        <L [2]
            <A [1] '0' > /* Name=VID */
            <L [1]
                <L [2]
                    <B [1] 0x00 > /* Name=LIMITID  */
                    <L [0]
                    >
                >
            >
        >
    >
>
.
DVLA: 'S2F45' W /* Name=DefineVariableLimitAttributes_AllVIDUndefined */
<L [2]
    <U2 [1] 0 > /* Name=DATAID */
    <L [0]
    >
>
.
DVLA: 'S2F45' W /* Name=DefineVariableLimitAttributes_AVidUndefined */
<L [2]
    <U2 [1] 0 >
    <L [1]
        <L [2]
            <A [1] '0' > /* Name=VID */
            <L [0]
            >
        >
    >
>
.
VLAA: 'S2F46' /* Name=VariableLimitAttributeAck_Ack */
<L [2]
    <B [1] 0x00 > /* Name=VLAACK Mapping=Acknowledge, command will be performed */
    <L [0]
    >
>
.
VLAA_Nak: 'S2F46' /* Name=VariableLimitAttributeAck_Nak */
<L [2]
    <B [1] 0x01 > /* Name=VLAACK Mapping=Limit attribute definition error */
    <L [1]
        <L [3]
            <A [1] '0' > /* Name=VID */
            <B [1] 0x01 > /* Name=LVACK Mapping=Variable does not exist */
            <L [2]
                <B [1] 0x00 > /* Name=LIMITID  */
                <B [1] 0x01 > /* Name=LIMITACK Mapping=LIMITID does not exist */
            >
        >
    >
>
.
VLAA: 'S2F46' /* Name=VariableLimitAttributeAck_VidLimit_Ack */
<L [2]
    <B [1] 0x00 > /* Name=VLAACK Mapping=Acknowledge, command will beperformed */
    <L [1]
        <L [3]
            <A [1] '0' > /* Name=VID */
            <B [1] 0x01 > /* Name=LVACK Mapping=Variable does not exist */
            <L [0]
            >
        >
    >
>
.
VLAR: 'S2F47' W /* Name=VariableLimitAttributeRequest */
<L [1]
    <A [1] '0' > /* Name=VID */
>
.
S2F47VariableLimitAttributeRequest_ALL: 'S2F47' W /* Name=VariableLimitAttributeRequest_ALL */
<L [0]
>
.
VLAS: 'S2F48' /* Name=VariableLimitAttributeSend */
<L [1]
    <L [2]
        <A [1] '0' > /* Name=VID */
        <L [4]
            <A [1] '0' > /* Name=UNITS */
            <A [1] '0' > /* Name=LIMITMIN */
            <A [1] '0' > /* Name=LIMITMAX */
            <L [1]
                <L [3]
                    <B [1] 0x00 > /* Name=LIMITID  */
                    <A [1] '0' > /* Name=UPPERDB */
                    <A [1] '0' >
                >
            >
        >
    >
>
.
S2F48VariableLimitAttributeSend_LimitNotDefined: 'S2F48' /* Name=VariableLimitAttributeSend_LimitNotDefined */
<L [1]
    <L [2]
        <A [1] '0' > /* Name=VID */
        <L [4]
            <A [1] '0' > /* Name=UNITS */
            <A [1] '0' > /* Name=LIMITMIN */
            <A [1] '0' > /* Name=LIMITMAX */
            <L [0]
            >
        >
    >
>
.
VLAS: 'S2F48' /* Name=VariableLimitAttributeSend_LimitNotSupportedForVID */
<L [1]
    <L [2]
        <A [1] '0' > /* Name=VID */
        <L [0]
        >
    >
>
.
ERC: 'S2F49' /* Name=EnhancedRemoteCommand */
<L [4]
    <U2 [1] 0 > /* Name=DATAID */
    <A [0] ''> /* Name=OBJSPEC  */
    <A [0] ''> /* Name=RCMD */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=CPNAME */
            <U1 [0] > /* Name=CEPVAL */
        >
    >
>
.
ERC: 'S2F49' /* Name=EnhancedRemoteCommand_NoParameterGroup */
<L [4]
    <U2 [1] 0 > /* Name=DATAID */
    <A [0] ''> /* Name=OBJSPEC  */
    <A [0] ''> /* Name=RCMD */
    <L [0]
    >
>
.
ERC_Ack: 'S2F50' /* Name=EnhancedReportCommandAck_Ack */
<L [2]
    <B [1] 0x00 > /* Name=HCACK Mapping=Acknowledge, command has been performed */
    <L [2]
        <A [0] ''> /* Name=CPNAME */
        <U1 [1] 0 > /* Name=CEPACK Mapping=No error */
    >
>
.
ERC_Nak: 'S2F50' /* Name=EnhancedReportCommandAck_Nak */
<L [2]
    <B [1] 0x01 > /* Name=HCACK Mapping=Command does not exist */
    <L [2]
        <A [0] ''> /* Name=CPNAME */
        <U1 [1] 1 > /* Name=CEPACK_Nak Mapping=Parameter name(CPNAME) does not exist */
    >
>
.
ABT_S3: 'S3F0' /* Name=AbortTransaction_S3 */
.
MSR: 'S3F1' W /* Name=MaterialStatusRequest */
.
MSD: 'S3F2' /* Name=MaterialStatusData */
<L [2]
    <B [0] > /* Name=MF */
    <L [1]
        <L [3]
            <B [0] > /* Name=LOC */
            <B [0] > /* Name=QUA */
            <A [0] ''> /* Name=MID */
        >
    >
>
.
TCR: 'S3F3' W /* Name=TimeToCompletionRequest */
.
TCD: 'S3F4' /* Name=TimeToCompletionData */
<L [2]
    <B [1] 0x01 > /* Name=MF */
    <L [1]
        <L [3]
            <I1 [1] 0 > /* Name=TTC */
            <I1 [1] 0 > /* Name=QUA */
            <B [1] 0x00 > /* Name=MID */
        >
    >
>
.
MFS: 'S3F5' W /* Name=MaterialFoundSend */
<L [2]
    <B [1] 0x01 > /* Name=MF */
    <I1 [1] 0 > /* Name=QUA */
>
.
MFA: 'S3F6' /* Name=MaterialFoundAck_Ack */
<B [1] 0x00 > /* Name=ACKC3 Mapping=Accepted */
.
MFA_Nak: 'S3F6' /* Name=MaterialFoundAck_Nak */
<B [1] 0x01 > /* Name=ACKC3 Mapping=Error, not accepted */
.
MLS: 'S3F7' W /* Name=MaterialLostSend */
<L [3]
    <B [1] 0x03 > /* Name=MF */
    <I1 [1] 0 > /* Name=QUA */
    <B [1] 0x00 > /* Name=MID */
>
.
MLA: 'S3F8' /* Name=MaterialLostAck_Ack */
<B [1] 0x00 > /* Name=ACKC3 Mapping=Accepted */
.
MLA_Nak: 'S3F8' /* Name=MaterialLostAck_Nak */
<B [1] 0x01 > /* Name=ACKC3 Mapping=Error, not accepted */
.
IES: 'S3F9' W /* Name=MaterialIDEquateSend */
<L [2]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=EMID */
>
.
IEA: 'S3F10' /* Name=MaterialIDEquateAck_Ack */
<B [1] 0x00 > /* Name=ACKC3 Mapping=Accepted */
.
IEA_Nak: 'S3F10' /* Name=MaterialIDEquateAck_Nak */
<B [1] 0x01 > /* Name=ACKC3 Mapping=Error, not accepted */
.
MIDR: 'S3F11' W /* Name=MaterialIDRequest */
<B [1] 0x00 > /* Name=PTN */
.
MIRA: 'S3F12' /* Name=MaterialIDRequestAck_Ack */
<L [3]
    <B [1] 0x00 > /* Name=PTN */
    <B [1] 0x00 > /* Name=MIDRA Mapping=Acknowledge, MID follows */
    <B [1] 0x00 > /* Name=MID */
>
.
MIRA_Nak: 'S3F12' /* Name=MaterialIDRequestAck_Nak */
<L [3]
    <B [1] 0x00 > /* Name=PTN */
    <B [1] 0x01 > /* Name=MIDRA Mapping=Acknowledge, will not send MID */
    <B [1] 0x00 > /* Name=MID */
>
.
MIS: 'S3F13' W /* Name=MaterialIDSend */
<L [2]
    <B [1] 0x00 > /* Name=PTN */
    <B [1] 0x00 > /* Name=MID */
>
.
MIA: 'S3F14' /* Name=MaterialIDAck_Ack */
<B [1] 0x00 > /* Name=MIDAC Mapping=Accepted */
.
MIA_Nak: 'S3F14' /* Name=MaterialIDAck_Nak */
<B [1] 0x01 > /* Name=MIDAC Mapping=Invalid port number */
.
MMBI: 'S3F15' W /* Name=MaterialsMultiBlockInquire */
<L [2]
    <A [0] ''> /* Name=DATAID  */
    <I1 [0] > /* Name=DATALENGTH  */
>
.
MMBG: 'S3F16' /* Name=MaterialsMultiBolckGrant_Nak */
<B [1] 0x01 > /* Name=GRANT Mapping=Busy, Try Again */
.
MMBG: 'S3F16' /* Name=MaterialsMultiBolckGranted */
<B [1] 0x00 > /* Name=GRANT Mapping=Permission Granted */
.
CAR: 'S3F17' W /* Name=CarrierActionRequest */
<L [5]
    <U2 [0] > /* Name=DATAID */
    <A [0] ''> /* Name=CARRIERACTION  */
    <A [0] ''> /* Name=CARRIERSPEC  */
    <B [0] > /* Name=PTN  */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=CATTRID  */
            <A [0] ''> /* Name=CATTRDATA  */
        >
    >
>
.
CAA: 'S3F18' /* Name=CarrierActionAcknowledge */
<L [2]
    <I1 [1] 0 > /* Name=CAACK Mapping=Acknowledge, command has been performed */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [1] '0' > /* Name=ERRTEXT */
        >
    >
>
.
CACOR: 'S3F19' W /* Name=CancelAllCarrierOutRequest */
.
CACOA: 'S3F20' /* Name=CancelAllCarrierOutAcknowledge */
<L [2]
    <I1 [1] 0 > /* Name=CAACK Mapping=Acknowledge, command has been performed */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [1] '0' > /* Name=ERRTEXT */
        >
    >
>
.
PGD: 'S3F21' W /* Name=PortGroupDefinition */
<L [3]
    <A [0] ''> /* Name=PORTGRPNAME  */
    <A [0] ''> /* Name=PORTACTION  */
    <L [1]
        <B [0] > /* Name=PTN  */
    >
>
.
PGDA: 'S3F22' /* Name=PortGroupDefinitionAcknowledge */
<L [2]
    <I1 [1] 0 > /* Name=CAACK Mapping=Acknowledge, command has been performed */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [1] '0' > /* Name=ERRTEXT */
        >
    >
>
.
PGAR: 'S3F23' W /* Name=PortGroupActionRequest */
<L [3]
    <A [0] ''> /* Name=PGRPACTION  */
    <A [0] ''> /* Name=PORTGRPNAME  */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=PARAMNAME  */
            <A [0] ''> /* Name=PARAMVAL  */
        >
    >
>
.
PGAA: 'S3F24' /* Name=PortGroupActionAckowledge */
<L [2]
    <I1 [1] 0 > /* Name=CAACK Mapping=Acknowledge, command has been performed */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [1] '0' > /* Name=ERRTEXT */
        >
    >
>
.
PAR: 'S3F25' W /* Name=PortActionRequest */
<L [3]
    <A [0] ''> /* Name=PORTACTION  */
    <B [0] > /* Name=PTN  */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=PARAMNAME  */
            <A [0] ''> /* Name=PARAMVAL  */
        >
    >
>
.
PGA: 'S3F26' /* Name=PortGroupAcknowledge */
<L [2]
    <I1 [1] 0 > /* Name=CAACK Mapping=Acknowledge, command has been performed */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [1] '0' > /* Name=ERRTEXT */
        >
    >
>
.
ABT_S4: 'S4F0' /* Name=AbortTransaction_S4 */
.
RSN: 'S4F1' W /* Name=ReadyToSend */
<L [2]
    <B [1] 0x00 > /* Name=PTN */
    <B [1] 0x00 > /* Name=MID */
>
.
RSA: 'S4F2' /* Name=ReadyToSendAck_Ack */
<B [1] 0x00 > /* Name=RSACK Mapping=OK */
.
RSA_Nak: 'S4F2' /* Name=ReadyToSendAck_Nak */
<B [1] 0x01 > /* Name=RSACK Mapping=Invalid port number */
.
SMN: 'S4F3' /* Name=SendMaterial */
<L [2]
    <B [1] 0x00 > /* Name=PTN */
    <B [1] 0x00 > /* Name=MID */
>
.
HCN: 'S4F5' /* Name=HandshakeComplete */
<L [2]
    <B [1] 0x00 > /* Name=PTN */
    <B [1] 0x00 > /* Name=MID */
>
.
ABN: 'S4F7' /* Name=NotReadyToSend */
<L [2]
    <B [1] 0x00 > /* Name=PTN */
    <B [1] 0x00 > /* Name=MID */
>
.
SSN: 'S4F9' /* Name=StuckInSender */
<L [2]
    <B [1] 0x00 > /* Name=PTN */
    <B [1] 0x00 > /* Name=MID */
>
.
SRN: 'S4F11' /* Name=StuckInReceiver */
<L [2]
    <B [1] 0x00 > /* Name=PTN */
    <B [1] 0x00 > /* Name=MID */
>
.
SIN: 'S4F13' /* Name=SendIncompleteTimeout */
<L [2]
    <B [1] 0x00 > /* Name=PTN */
    <B [1] 0x00 > /* Name=MID */
>
.
MRN: 'S4F15' /* Name=MaterialReceived */
<L [2]
    <B [1] 0x00 > /* Name=PTN */
    <B [1] 0x00 > /* Name=MID */
>
.
RTR: 'S4F17' W /* Name=RequestToReceive */
<L [2]
    <B [1] 0x00 > /* Name=PTN */
    <B [1] 0x00 > /* Name=MID */
>
.
RRA: 'S4F18' /* Name=RequestToReceiveAck_Ack */
<B [1] 0x00 > /* Name=RRACK Mapping=OK */
.
RRA_Nak: 'S4F18' /* Name=RequestToReceiveAck_Nak */
<B [1] 0x01 > /* Name=RRACK Mapping=Invalid port number */
.
TJ: 'S4F19' W /* Name=TransferJobCreate */
<L [2]
    <U2 [1] 0 >
    <L [2]
        <A [1] '0' > /* Name=TRJOBNAME */
        <L [1]
            <L [12]
                <U1 [1] 0 > /* Name=TRLINK */
                <U1 [1] 0 > /* Name=TRPORT */
                <A [1] '0' > /* Name=TROBJNAME */
                <U1 [1] 0 > /* Name=TROBJTYPE */
                <U1 [1] 1 > /* Name=TRROLE */
                <A [1] '0' > /* Name=TRRCP */
                <A [1] '0' > /* Name=TRPTNR */
                <U1 [1] 0 > /* Name=TRPTPORT */
                <U1 [1] 1 > /* Name=TRDIR */
                <U1 [1] 1 > /* Name=TRTYPE */
                <U1 [1] 0 > /* Name=TRLOCATION */
                <B [1] 0x00 > /* Name=TRAUTOSTART */
            >
        >
    >
>
.
TJA: 'S4F20' /* Name=TransferJobAck_Ack */
<L [3]
    <B [1] 0x00 > /* Name=TRJOBID */
    <L [1]
        <U1 [1] 0 > /* Name=TRATOMICID */
    >
    <L [2]
        <Boolean [1] True > /* Name=TRACK Mapping=Transfer activity was successful */
        <L [0]
        >
    >
>
.
TJA_Nak: 'S4F20' /* Name=TransferJobAck_Nak */
<L [3]
    <B [1] 0x00 > /* Name=TRJOBID */
    <L [1]
        <U1 [1] 0 > /* Name=TRATOMICID */
    >
    <L [2]
        <Boolean [1] False > /* Name=TRACK Mapping=Transfer activity was unsuccessful */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [1] '0' > /* Name=ERRTEXT */
            >
        >
    >
>
.
TC: 'S4F21' W /* Name=TransferJobCommand */
<L [3]
    <B [1] 0x00 > /* Name=TRJOBID */
    <A [0] ''> /* Name=TRCMDNAME */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=CPNAME */
            <B [0] > /* Name=CPVAL */
        >
    >
>
.
TCA: 'S4F22' /* Name=TransferCommandAck_Ack */
<L [2]
    <Boolean [1] True > /* Name=TRACK Mapping=Transfer activity was successful */
    <L [1]
        <L [0]
        >
    >
>
.
TCA_Nak: 'S4F22' /* Name=TransferCommandAck_Nak */
<L [2]
    <Boolean [1] False > /* Name=TRACK Mapping=Transfer activity was unsuccessful */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
TJA: 'S4F23' W /* Name=TransferJobAlert_Ack */
<L [4]
    <B [1] 0x00 > /* Name=TRJOBID */
    <A [1] '0' > /* Name=TRJOBNAME */
    <U1 [0] > /* Name=TRJOBMS */
    <L [2]
        <Boolean [1] True > /* Name=TRACK Mapping=Transfer activity was successful */
        <L [1]
            <L [0]
            >
        >
    >
>
.
TJA_Nak: 'S4F23' W /* Name=TransferJobAlert_Nak */
<L [4]
    <B [1] 0x00 > /* Name=TRJOBID */
    <A [1] '0' > /* Name=TRJOBNAME */
    <U1 [0] > /* Name=TRJOBMS */
    <L [2]
        <Boolean [1] False > /* Name=TRACK Mapping=Transfer activity was unsuccessful */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
TLA: 'S4F24' /* Name=TransferAlertAck */
.
MBI4: 'S4F25' W /* Name=MultiBlockInquire_S4 */
<L [2]
    <U2 [1] 0 >
    <I2 [1] 0 > /* Name=DATALENGTH */
>
.
MBG4: 'S4F26' /* Name=MultiBlockGrant_S4_Ack */
<B [1] 0x00 > /* Name=GRANT Mapping=Permission Granted */
.
MBG4_Nak: 'S4F26' /* Name=MultiBlockGrant_S4_Nak */
<B [1] 0x01 > /* Name=GRANT Mapping=Busy, Try Again */
.
HR: 'S4F27' /* Name=HandoffReady */
<L [2]
    <I2 [1] 0 > /* Name=EQNAME */
    <L [10]
        <I2 [1] 0 > /* Name=TRLINK */
        <I2 [1] 0 > /* Name=TRPORT */
        <A [1] '0' > /* Name=TROBJNAME */
        <I2 [1] 0 > /* Name=TROBJTYPE */
        <I2 [1] 0 > /* Name=TRROLE */
        <I2 [1] 0 > /* Name=TRPTNR */
        <I2 [1] 0 > /* Name=TRPTPORT */
        <I2 [1] 0 > /* Name=TRDIR */
        <I2 [1] 0 > /* Name=TRTYPE */
        <I2 [1] 0 > /* Name=TRLOCATION */
    >
>
.
HC: 'S4F29' /* Name=HandoffCommand */
<L [4]
    <I2 [1] 0 > /* Name=TRLINK */
    <I1 [0] > /* Name=MCINDEX */
    <B [1] 0x00 > /* Name=HOCMDNAME */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=CPNAME */
            <B [0] > /* Name=CPVAL */
        >
    >
>
.
HCC: 'S4F31' /* Name=HandoffCommandComplete_Ack */
<L [3]
    <I2 [1] 0 > /* Name=TRLINK */
    <I1 [0] > /* Name=MCINDEX */
    <L [2]
        <Boolean [1] True > /* Name=HOACK */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [1] '0' > /* Name=ERRTEXT */
            >
        >
    >
>
.
HCC_Nak: 'S4F31' /* Name=HandoffCommandComplete_Nak */
<L [3]
    <I2 [1] 0 > /* Name=TRLINK */
    <I1 [0] > /* Name=MCINDEX */
    <L [2]
        <Boolean [1] False > /* Name=HOACK_Nak */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [1] '0' > /* Name=ERRTEXT */
            >
        >
    >
>
.
HV: 'S4F33' /* Name=HandoffVerified_Ack */
<L [2]
    <U1 [1] 0 > /* Name=TRLINK */
    <L [2]
        <Boolean [1] True > /* Name=HOACK */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [1] '0' > /* Name=ERRTEXT */
            >
        >
    >
>
.
HV_Nak: 'S4F33' /* Name=HandoffVerified_Nak */
<L [2]
    <U1 [1] 0 > /* Name=TRLINK */
    <L [2]
        <Boolean [1] False > /* Name=HOACK_Nak */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [1] '0' > /* Name=ERRTEXT */
            >
        >
    >
>
.
HCR: 'S4F35' /* Name=HandoffCancelReady */
<I2 [1] 0 > /* Name=TRLINK */
.
HCA: 'S4F37' /* Name=HandoffCancelReady_Ack */
<L [2]
    <I2 [1] 0 > /* Name=TRLINK */
    <U1 [1] 0 > /* Name=HOCANCELACK */
>
.
HCA_Nak: 'S4F37' /* Name=HandoffCancelReady_Nak */
<L [2]
    <I2 [1] 0 > /* Name=TRLINK */
    <A [1] '1' > /* Name=HOCANCELACK_Nak */
>
.
HH: 'S4F39' /* Name=HandoffHalt */
<I2 [1] 0 > /* Name=TRLINK */
.
HHA: 'S4F41' /* Name=HandoffHaltAck_Ack */
<L [2]
    <I2 [1] 0 > /* Name=TRLINK */
    <U1 [1] 0 > /* Name=HOHALTACK */
>
.
HHA_Nak: 'S4F41' /* Name=HandoffHaltAck_Nak */
<L [2]
    <I2 [1] 0 > /* Name=TRLINK */
    <A [1] '1' > /* Name=HOHALTACK_Nak */
>
.
ABT_S5: 'S5F0' /* Name=AbortTransaction_S5 */
.
ARS: 'S5F1' W /* Name=AlarmReportSend */
<L [3]
    <B [1] 0x01 > /* Name=ALCD */
    <I2 [1] 0 > /* Name=ALID */
    <I1 [0] > /* Name=ALTX */
>
.
ARA: 'S5F2' /* Name=AlarmReportAck_Ack */
<B [1] 0x00 > /* Name=ACKC5 Mapping=Accepted */
.
ARA_Nak: 'S5F2' /* Name=AlarmReportAck_Nak */
<B [1] 0x01 > /* Name=ACKC5 Mapping=Error, not accepted */
.
EAS: 'S5F3' W /* Name=EnableDisableAlarmSend */
<L [2]
    <B [1] 0x80 > /* Name=ALED */
    <I2 [1] 0 > /* Name=ALID */
>
.
EAA: 'S5F4' /* Name=EnableDisableAlarmAck_Ack */
<B [1] 0x00 > /* Name=ACKC5 Mapping=Accepted */
.
EAA_Nak: 'S5F4' /* Name=EnableDisableAlarmAck_Nak */
<B [1] 0x01 > /* Name=ACKC5 Mapping=Error, not accepted */
.
LAR: 'S5F5' W /* Name=ListAlarmsRequest */
<I2 [5] 0 1 2 3 4 > /* Name=ALID */
.
LAR_All: 'S5F5' W /* Name=ListAlarmsRequest_All */
<I2 [0] > /* Name=ALID */
.
LAD: 'S5F6' /* Name=ListAlarmData */
<L [1]
    <L [3]
        <B [1] 0x01 > /* Name=ALCD */
        <I2 [1] 0 > /* Name=ALID */
        <I1 [0] > /* Name=ALTX */
    >
>
.
LEAR: 'S5F7' W /* Name=ListEnabledAlarmRequest */
.
LEAD: 'S5F8' /* Name=ListEnabledAlarmData */
<L [1]
    <L [3]
        <B [1] 0x01 > /* Name=ALCD */
        <I2 [1] 0 > /* Name=ALID */
        <I1 [0] > /* Name=ALTX */
    >
>
.
EXPN: 'S5F9' W /* Name=ExceptionPostNotify */
<L [5]
    <A [0] ''> /* Name=TIMESTAMP  */
    <A [0] ''> /* Name=EXID */
    <A [0] ''> /* Name=EXTYPE */
    <A [0] ''> /* Name=EXMESSAGE */
    <L [1]
        <A [0] ''> /* Name=EXRECVRA */
    >
>
.
EXPC: 'S5F10' /* Name=ExceptionPostConfirm */
.
EXCN: 'S5F11' W /* Name=ExceptionClearNotify */
<L [4]
    <A [0] ''> /* Name=TIMESTAMP  */
    <A [0] ''> /* Name=EXID */
    <A [0] ''> /* Name=EXTYPE */
    <A [0] ''> /* Name=EXMESSAGE */
>
.
EXCC: 'S5F12' /* Name=ExceptionClearConfirm */
.
EXRR: 'S5F13' W /* Name=ExceptionRecoverRequest */
<L [2]
    <A [0] ''> /* Name=EXID */
    <A [0] ''> /* Name=EXRECVRA */
>
.
EXRA: 'S5F14' /* Name=ExceptionRecoverAck */
<L [2]
    <A [0] ''> /* Name=EXID */
    <L [2]
        <Boolean [1] True > /* Name=ACKA Mapping=Success */
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [1] '0' > /* Name=ERRTEXT */
        >
    >
>
.
EXRCN: 'S5F15' W /* Name=ExceptionRecoveryCompleteNotify */
<L [3]
    <A [0] ''> /* Name=TIMESTAMP  */
    <A [0] ''> /* Name=EXID */
    <L [2]
        <Boolean [1] False > /* Name=ACKA */
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [1] '0' > /* Name=ERRTEXT */
        >
    >
>
.
EXRCC: 'S5F16' /* Name=ExceptionRecoveryCompleteConfirm */
.
EXRAR: 'S5F17' W /* Name=ExceptionRecoveryAbortRequest */
<A [0] ''> /* Name=EXID */
.
S5F18ExceptionRecoveryAbortAck: 'S5F18' /* Name=ExceptionRecoveryAbortAck */
<L [2]
    <A [0] ''> /* Name=EXID */
    <L [2]
        <Boolean [1] True > /* Name=ACKA Mapping=Success */
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [1] '0' > /* Name=ERRTEXT */
        >
    >
>
.
ABT_S6: 'S6F0' /* Name=AbortTransaction_S6 */
.
S6F1TDS: 'S6F1' W /* Name=TraceDataSend */
<L [4]
    <U2 [1] 0 > /* Name=TRID */
    <U4 [1] 1 > /* Name=SMPLN */
    <A [12] '961127140212' > /* Name=STIME */
    <L [1]
        <A [1] '0' > /* Name=SV */
    >
>
.
TDA: 'S6F2' /* Name=TraceDataAck_Ack */
<B [1] 0x00 > /* Name=ACKC6 Mapping=Accepted */
.
TDA_Nak: 'S6F2' /* Name=TraceDataAck_Nak */
<B [1] 0x01 > /* Name=ACKC6 Mapping=Error, not accepted */
.
DVS: 'S6F3' W /* Name=DiscreteVariableDataSend */
<L [3]
    <U2 [1] 0 >
    <A [1] '0' > /* Name=CEID */
    <L [1]
        <L [2]
            <A [1] '0' > /* Name=DSID */
            <L [1]
                <L [2]
                    <A [1] '0' > /* Name=DVNAME */
                    <B [1] 0x00 > /* Name=DVVAL */
                >
            >
        >
    >
>
.
DVA: 'S6F4' /* Name=DiscreteVariableDataAck_Ack */
<B [1] 0x00 > /* Name=ACKC6 Mapping=Accepted */
.
DVA_Nak: 'S6F4' /* Name=DiscreteVariableDataAck_Nak */
<B [1] 0x01 > /* Name=ACKC6 Mapping=Error, not accepted */
.
MBI: 'S6F5' W /* Name=MultiBlockDataSendInquire_S6 */
<L [2]
    <U2 [1] 0 >
    <I2 [1] 0 > /* Name=DATALENGTH */
>
.
MBG: 'S6F6' /* Name=MultiBlockGrant_S6_Ack */
<B [1] 0x00 > /* Name=GRANT6 Mapping=Permission granted */
.
MBG_Nak: 'S6F6' /* Name=MultiBlockGrant_S6_Nak */
<B [1] 0x01 > /* Name=GRANT6 Mapping=Busy, Try Again */
.
DDR: 'S6F7' W /* Name=DataTransferRequest */
<U2 [1] 0 >
.
DDD: 'S6F8' /* Name=DataTransferData */
<L [3]
    <U2 [1] 0 >
    <A [1] '0' > /* Name=CEID */
    <L [1]
        <L [2]
            <A [1] '0' > /* Name=DSID */
            <L [1]
                <L [2]
                    <A [1] '0' > /* Name=DVNAME */
                    <B [1] 0x00 > /* Name=DVVAL */
                >
            >
        >
    >
>
.
FVS: 'S6F9' W /* Name=FormattedVariableSend */
<L [4]
    <B [1] 0x00 > /* Name=PFCD */
    <U2 [1] 0 >
    <A [1] '0' > /* Name=CEID */
    <L [1]
        <L [2]
            <A [1] '0' > /* Name=DSID */
            <L [1]
                <B [1] 0x00 > /* Name=DVVAL */
            >
        >
    >
>
.
FVA: 'S6F10' /* Name=FormattedVariableAck_Ack */
<B [1] 0x00 > /* Name=ACKC6 Mapping=Accepted */
.
FVA_Nak: 'S6F10' /* Name=FormattedVariableAck_Nak */
<B [1] 0x01 > /* Name=ACKC6 Mapping=Error, not accepted */
.
ERS: 'S6F11' W /* Name=EventReportSend */
<L [3]
    <U2 [1] 0 >
    <U2 [1] 0 > /* Name=CEID */
    <L [1]
        <L [2]
            <U2 [1] 12 > /* Name=RPTID */
            <L [1]
                <B [1] 0x00 > /* Name=V */
            >
        >
    >
>
.
ERA: 'S6F12' /* Name=EventReportAck_Ack */
<B [1] 0x00 > /* Name=ACKC6 Mapping=Accepted */
.
ERA_Nak: 'S6F12' /* Name=EventReportAck_Nak */
<B [1] 0x01 > /* Name=ACKC6 Mapping=Error, not accepted */
.
AERS: 'S6F13' W /* Name=AnnotatedEventReportSend */
<L [3]
    <U2 [1] 0 >
    <U2 [1] 0 > /* Name=CEID */
    <L [1]
        <L [2]
            <U2 [1] 12 > /* Name=RPTID */
            <L [1]
                <L [2]
                    <A [1] '0' > /* Name=VID */
                    <B [1] 0x00 > /* Name=V */
                >
            >
        >
    >
>
.
AERA: 'S6F14' /* Name=AnnotatedEventReportAck_Ack */
<B [1] 0x00 > /* Name=ACKC6 Mapping=Accepted */
.
AERA_Nak: 'S6F14' /* Name=AnnotatedEventReportAck_Nak */
<B [1] 0x01 > /* Name=ACKC6 Mapping=Error, not accepted */
.
ERR: 'S6F15' W /* Name=EventReportRequest */
<A [1] '0' > /* Name=CEID */
.
ERD: 'S6F16' /* Name=EventReportData */
<L [3]
    <U2 [1] 0 >
    <U2 [1] 0 > /* Name=CEID */
    <L [1]
        <L [2]
            <U2 [1] 12 > /* Name=RPTID */
            <L [1]
                <B [1] 0x00 > /* Name=V */
            >
        >
    >
>
.
AERR: 'S6F17' W /* Name=AnnotatedEventReportRequest */
<A [1] '0' > /* Name=CEID */
.
AERD: 'S6F18' /* Name=AnnotatedEventReportData */
<L [3]
    <U2 [1] 0 >
    <U2 [1] 0 > /* Name=CEID */
    <L [1]
        <L [2]
            <U2 [1] 12 > /* Name=RPTID */
            <L [1]
                <L [2]
                    <A [1] '0' > /* Name=VID */
                    <B [1] 0x00 > /* Name=V */
                >
            >
        >
    >
>
.
IRR: 'S6F19' W /* Name=IndividualReportRequest */
<A [1] ' ' > /* Name=RPTID */
.
IRD: 'S6F20' /* Name=IndividualReportData */
<L [1]
    <B [1] 0x00 > /* Name=V */
>
.
AIRR: 'S6F21' W /* Name=AnnotatedIndividualReportRequest */
<A [1] ' ' > /* Name=RPTID */
.
AIRD: 'S6F22' /* Name=AnnotatedIndividualReportData */
<L [1]
    <L [2]
        <A [1] '0' > /* Name=VID */
        <B [1] 0x00 > /* Name=V */
    >
>
.
RSD: 'S6F23' W /* Name=RequestSpooledData */
<U1 [1] 0 > /* Name=RSDC */
.
RSDAC: 'S6F24' /* Name=RequestSpooledDataAck_Ack */
<B [1] 0x00 > /* Name=RSDA Mapping=OK */
.
RSDAC: 'S6F24' /* Name=RequestSpooledDataAck_Nak */
<B [1] 0x01 > /* Name=RSDA Mapping=Denied, busy try later */
.
NRS: 'S6F25' W /* Name=NotificationReportSend */
<L [7]
    <U2 [1] 0 >
    <U8 [0] > /* Name=OPID */
    <U4 [0] > /* Name=LINKID  */
    <A [0] ''> /* Name=RCPSPEC */
    <U1 [0] > /* Name=RMCHGSTAT  */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=RCPATTRID */
            <F8 [0] > /* Name=RCPATTRDATA */
        >
    >
    <L [2]
        <U1 [0] > /* Name=RMACK */
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [1] '0' > /* Name=ERRTEXT */
        >
    >
>
.
NRS: 'S6F25' W /* Name=NotificationReportSend_FAILURE */
<L [7]
    <U2 [1] 0 >
    <U8 [0] > /* Name=OPID */
    <U4 [0] > /* Name=LINKID  */
    <A [0] ''> /* Name=RCPSPEC */
    <U1 [0] > /* Name=RMCHGSTAT  */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=RCPATTRID */
            <F8 [0] > /* Name=RCPATTRDATA */
        >
    >
    <L [2]
        <U1 [0] > /* Name=RMACK_Nak */
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [1] '0' > /* Name=ERRTEXT */
        >
    >
>
.
NRS_Ack: 'S6F26' /* Name=NotificationReportSendAck_Ack */
<B [1] 0x00 > /* Name=ACKC6 Mapping=Accepted */
.
NRS_Nak: 'S6F26' /* Name=NotificationReportSendAck_Nak */
<B [1] 0x01 > /* Name=ACKC6 Mapping=Error, not accepted */
.
TRS: 'S6F27' W /* Name=TraceReportSend */
<L [3]
    <U2 [1] 0 >
    <A [0] ''> /* Name=TRID */
    <L [1]
        <L [1]
            <L [2]
                <A [0] ''> /* Name=RPTID */
                <L [1]
                    <B [1] 0x00 > /* Name=V */
                >
            >
        >
    >
>
.
TRS: 'S6F28' /* Name=TraceReportSendAck */
<A [0] ''> /* Name=TRID */
.
TRR: 'S6F29' /* Name=TraceReportRequest */
<A [0] ''> /* Name=TRID */
.
TRD: 'S6F30' /* Name=TraceReportData */
<L [2]
    <A [0] ''> /* Name=TRID */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=RPTID */
            <L [1]
                <B [1] 0x00 > /* Name=V */
            >
        >
    >
>
<I2 [1] 0 > /* Name=ERRCODE */
.
ABT_S7: 'S7F0' /* Name=AbortTransaction_S7 */
.
PPI: 'S7F1' W /* Name=ProcessProgramLoadInquire */
<L [2]
    <B [1] 0x00 > /* Name=PPID */
    <I2 [1] 0 > /* Name=LENGTH */
>
.
PPG: 'S7F2' /* Name=ProcessProgramLoadGrant_Ack */
<B [1] 0x00 > /* Name=PPGNT Mapping=OK */
.
PPG_Nak: 'S7F2' /* Name=ProcessProgramLoadGrant_Nak */
<B [1] 0x02 > /* Name=PPGNT Mapping=No space */
.
PPS: 'S7F3' W /* Name=ProcessProgramSend */
<L [2]
    <B [1] 0x00 > /* Name=PPID */
    <B [1] 0x00 > /* Name=PPBODY */
>
.
PPA: 'S7F4' /* Name=ProcessProgramAck_Ack */
<B [1] 0x00 > /* Name=ACKC7 Mapping=Accepted */
.
PPA_Nak: 'S7F4' /* Name=ProcessProgramAck_Nak */
<B [1] 0x01 > /* Name=ACKC7 Mapping=Permission not granted */
.
PPR: 'S7F5' W /* Name=ProcessProgramRequest */
<B [1] 0x00 > /* Name=PPID */
.
PPD: 'S7F6' /* Name=ProcessProgramData */
<L [2]
    <B [1] 0x00 > /* Name=PPID */
    <B [1] 0x00 > /* Name=PPBODY */
>
.
PPD_Denied: 'S7F6' /* Name=ProcessProgramData_RequestDenied */
<L [0]
>
.
PIR: 'S7F7' W /* Name=ProcessProgramIDRequest */
<A [0] ''> /* Name=MID */
.
PID: 'S7F8' /* Name=ProcessProgramIDData */
<L [2]
    <B [1] 0x00 > /* Name=PPID */
    <A [0] ''> /* Name=MID */
>
.
MMR: 'S7F9' W /* Name=MPMRequest */
.
MMD: 'S7F10' /* Name=MPMData */
<L [1]
    <L [2]
        <B [1] 0x00 > /* Name=PPID */
        <L [1]
            <A [0] ''> /* Name=MID */
        >
    >
>
.
UMS: 'S7F11' W /* Name=MPMUpdateSend */
<L [1]
    <L [2]
        <B [1] 0x00 > /* Name=PPID */
        <L [1]
            <A [0] ''> /* Name=MID */
        >
    >
>
.
UMA: 'S7F12' /* Name=MPMUpdateAck_Ack */
<B [1] 0x00 > /* Name=ACKC7 Mapping=Accepted */
.
UMA_Nak: 'S7F12' /* Name=MPMUpdateAck_Nak */
<B [1] 0x01 > /* Name=ACKC7 Mapping=Permission not granted */
.
DES: 'S7F13' W /* Name=DeleteMPMEntrySend */
<L [1]
    <L [2]
        <B [1] 0x00 > /* Name=PPID */
        <L [1]
            <A [0] ''> /* Name=MID */
        >
    >
>
.
DEA: 'S7F14' /* Name=DeleteMPMEntryAck_Ack */
<B [1] 0x00 > /* Name=ACKC7 Mapping=Accepted */
.
DEA_Nak: 'S7F14' /* Name=DeleteMPMEntryAck_Nak */
<B [1] 0x01 > /* Name=ACKC7 Mapping=Permission not granted */
.
MMS: 'S7F15' W /* Name=MatrixModeSelectSend */
<B [1] 0x01 > /* Name=MMODE */
.
MMA: 'S7F16' /* Name=MatrixModeSelectAck_Ack */
<B [1] 0x00 > /* Name=ACKC7 Mapping=Accepted */
.
MMA_Nak: 'S7F16' /* Name=MatrixModeSelectAck_Nak */
<B [1] 0x01 > /* Name=ACKC7 Mapping=Permission not granted */
.
DPS: 'S7F17' W /* Name=DeleteProcessProgramSend */
<L [1]
    <B [1] 0x00 > /* Name=PPID */
>
.
DPA: 'S7F18' /* Name=DeleteProcessProgramAck_Ack */
<B [1] 0x00 > /* Name=ACKC7 Mapping=Accepted */
.
DPA_Nak: 'S7F18' /* Name=DeleteProcessProgramAck_Nak */
<B [1] 0x01 > /* Name=ACKC7 Mapping=Permission not granted */
.
RER: 'S7F19' W /* Name=CurrentEPPDRequest */
.
RED: 'S7F20' /* Name=CurrentEPPDData */
<L [1]
    <B [1] 0x00 > /* Name=PPID */
>
.
PCR: 'S7F21' W /* Name=EquipmentProcessCapabilitiesRequest */
.
PCD: 'S7F22' /* Name=EquipmentProcessCapabilitiesData */
<L [5]
    <A [1] '0' > /* Name=MDLN */
    <A [1] '0' > /* Name=SOFTREV */
    <I1 [1] 0 > /* Name=CMDMAX */
    <I1 [1] 0 > /* Name=BYTMAX */
    <L [1]
        <L [11]
            <I1 [1] 0 > /* Name=CCODE */
            <A [7] 'CMDNAME' > /* Name=CNAME */
            <Boolean [1] False > /* Name=RQCMD */
            <I1 [1] 0 > /* Name=BLKDEF */
            <I2 [1] 0 > /* Name=BCDS */
            <I2 [1] 0 > /* Name=IBCDS */
            <I1 [1] 0 > /* Name=NBCDS */
            <I2 [1] 0 > /* Name=ACDS */
            <I2 [1] 0 > /* Name=IACDS */
            <I1 [1] 0 > /* Name=NACDS */
            <L [1]
                <L [0]
                >
            >
        >
    >
>
.
PCD_BooleanData: 'S7F22' /* Name=EquipmentProcessCapabilitiesData_BOOLEAN */
<L [5]
    <A [1] '0' > /* Name=MDLN */
    <A [1] '0' > /* Name=SOFTREV */
    <I1 [1] 0 > /* Name=CMDMAX */
    <I1 [1] 0 > /* Name=BYTMAX */
    <L [1]
        <L [11]
            <I1 [1] 0 > /* Name=CCODE */
            <A [7] 'CMDNAME' > /* Name=CNAME */
            <Boolean [1] False > /* Name=RQCMD */
            <I1 [1] 0 > /* Name=BLKDEF */
            <I2 [1] 0 > /* Name=BCDS */
            <I2 [1] 0 > /* Name=IBCDS */
            <I1 [1] 0 > /* Name=NBCDS */
            <I2 [1] 0 > /* Name=ACDS */
            <I2 [1] 0 > /* Name=IACDS */
            <I1 [1] 0 > /* Name=NACDS */
            <L [1]
                <L [4]
                    <A [0] ''> /* Name=PNAME */
                    <Boolean [1] False > /* Name=RQPAR */
                    <A [0] ''> /* Name=PDFLT */
                    <I1 [0] > /* Name=PMAX */
                >
            >
        >
    >
>
.
PCD_NumericData: 'S7F22' /* Name=EquipmentProcessCapabilitiesData_NUMERIC */
<L [5]
    <A [1] '0' > /* Name=MDLN */
    <A [1] '0' > /* Name=SOFTREV */
    <I1 [1] 0 > /* Name=CMDMAX */
    <I1 [1] 0 > /* Name=BYTMAX */
    <L [1]
        <L [11]
            <I1 [1] 0 > /* Name=CCODE */
            <A [7] 'CMDNAME' > /* Name=CNAME */
            <Boolean [1] False > /* Name=RQCMD */
            <I1 [1] 0 > /* Name=BLKDEF */
            <I2 [1] 0 > /* Name=BCDS */
            <I2 [1] 0 > /* Name=IBCDS */
            <I1 [1] 0 > /* Name=NBCDS */
            <I2 [1] 0 > /* Name=ACDS */
            <I2 [1] 0 > /* Name=IACDS */
            <I1 [1] 0 > /* Name=NACDS */
            <L [1]
                <L [9]
                    <A [0] ''> /* Name=PNAME */
                    <Boolean [1] False > /* Name=RQPAR */
                    <A [0] ''> /* Name=PDFLT */
                    <I1 [0] > /* Name=PMAX */
                    <I2 [0] > /* Name=LLIM */
                    <I1 [0] > /* Name=ULIM */
                    <A [0] ''> /* Name=UNITS */
                    <I1 [0] > /* Name=RESC */
                    <I1 [0] > /* Name=RESV */
                >
            >
        >
    >
>
.
PCD_StringData: 'S7F22' /* Name=EquipmentProcessCapabilitiesData_STRING */
<L [5]
    <A [1] '0' > /* Name=MDLN */
    <A [1] '0' > /* Name=SOFTREV */
    <I1 [1] 0 > /* Name=CMDMAX */
    <I1 [1] 0 > /* Name=BYTMAX */
    <L [1]
        <L [11]
            <I1 [1] 0 > /* Name=CCODE */
            <A [7] 'CMDNAME' > /* Name=CNAME */
            <Boolean [1] False > /* Name=RQCMD */
            <I1 [1] 0 > /* Name=BLKDEF */
            <I2 [1] 0 > /* Name=BCDS */
            <I2 [1] 0 > /* Name=IBCDS */
            <I1 [1] 0 > /* Name=NBCDS */
            <I2 [1] 0 > /* Name=ACDS */
            <I2 [1] 0 > /* Name=IACDS */
            <I1 [1] 0 > /* Name=NACDS */
            <L [1]
                <L [5]
                    <A [0] ''> /* Name=PNAME */
                    <Boolean [1] False > /* Name=RQPAR */
                    <A [0] ''> /* Name=PDFLT */
                    <I1 [0] > /* Name=PMAX */
                    <L [1]
                        <A [0] ''> /* Name=STEMP */
                    >
                >
            >
        >
    >
>
.
FPS: 'S7F23' W /* Name=FormattedProcessProgramSend */
<L [4]
    <B [1] 0x00 > /* Name=PPID */
    <A [1] '0' > /* Name=MDLN */
    <A [1] '0' > /* Name=SOFTREV */
    <L [1]
        <L [2]
            <I1 [1] 0 > /* Name=CCODE */
            <L [1]
                <A [1] '0' > /* Name=PPARM */
            >
        >
    >
>
.
FPA: 'S7F24' /* Name=FormattedProcessProgramAck_Ack */
<B [1] 0x00 > /* Name=ACKC7 Mapping=Accepted */
.
FPA_Nak: 'S7F24' /* Name=FormattedProcessProgramAck_Nak */
<B [1] 0x01 > /* Name=ACKC7 Mapping=Permission not granted */
.
FPR: 'S7F25' W /* Name=FormattedProcessProgramRequest */
<B [1] 0x00 > /* Name=PPID */
.
FPD: 'S7F26' /* Name=FormattedProcessProgramData */
<L [4]
    <B [1] 0x00 > /* Name=PPID */
    <A [1] '0' > /* Name=MDLN */
    <A [1] '0' > /* Name=SOFTREV */
    <L [1]
        <L [2]
            <I1 [1] 0 > /* Name=CCODE */
            <L [1]
                <A [1] '0' > /* Name=PPARM */
            >
        >
    >
>
.
PVS_Failure: 'S7F27' W /* Name=ProcessProgramVericationSend_FAILURE */
<L [2]
    <B [1] 0x00 > /* Name=PPID */
    <L [1]
        <L [3]
            <I1 [1] 1 > /* Name=ACKC7A_Nak */
            <I1 [1] 0 > /* Name=SEQNUM */
            <A [1] '0' > /* Name=ERRW7 */
        >
    >
>
.
PVS: 'S7F27' W /* Name=ProcessProgramVerificationSend */
<L [2]
    <B [1] 0x00 > /* Name=PPID */
    <L [1]
        <L [3]
            <U1 [1] 0 > /* Name=ACKC7A */
            <I1 [1] 0 > /* Name=SEQNUM */
            <A [1] '0' > /* Name=ERRW7 */
        >
    >
>
.
PVA: 'S7F28' /* Name=ProcessProgramVerificationAck */
.
PVI: 'S7F29' W /* Name=ProcessProgramVerificationInquire */
<I2 [1] 0 > /* Name=LENGTH */
.
PVG: 'S7F30' /* Name=ProcessProgramVerificationGrant */
<B [1] 0x00 > /* Name=PPGNT Mapping=OK */
.
VRS: 'S7F31' W /* Name=VerificationRequestSend */
<L [4]
    <B [1] 0x00 > /* Name=PPID */
    <A [1] '0' > /* Name=MDLN */
    <A [1] '0' > /* Name=SOFTREV */
    <L [1]
        <L [2]
            <I1 [1] 0 > /* Name=CCODE */
            <L [1]
                <A [1] '0' > /* Name=PPARM */
            >
        >
    >
>
.
VRA: 'S7F32' /* Name=VerificationRequestAck_Ack */
<B [1] 0x00 > /* Name=ACKC7 Mapping=Accepted */
.
VRA_Nak: 'S7F32' /* Name=VerificationRequestAck_Nak */
<B [1] 0x01 > /* Name=ACKC7 Mapping=Permission not granted */
.
PAR: 'S7F33' W /* Name=ProcessProgramAvailableRequest */
<B [1] 0x00 > /* Name=PPID */
.
PAD: 'S7F34' /* Name=ProcessProgramAvailabilityData */
<L [3]
    <B [1] 0x00 > /* Name=PPID */
    <I2 [1] 0 > /* Name=UNFLEN */
    <I2 [1] 0 > /* Name=FRMLEN */
>
.
PPMR: 'S7F35' W /* Name=ProcessProgramForMIDRequest */
<B [1] 0x00 > /* Name=MID */
.
PPMD: 'S7F36' /* Name=ProcessProgramForMIDData */
<L [3]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=PPID */
    <B [1] 0x00 > /* Name=PPBODY */
>
.
ABT_S8: 'S8F0' /* Name=AbortTransaction_S8 */
.
BPR: 'S8F1' W /* Name=BootProgramRequest */
.
BPD: 'S8F2' /* Name=BootProgramData */
<B [1] 0x00 > /* Name=BPD */
.
EPR: 'S8F3' W /* Name=ExecutiveProgramRequest */
.
EPD: 'S8F4' /* Name=ExecutiveProgramData */
<B [1] 0x00 > /* Name=EPD */
.
ABT_S9: 'S9F0' /* Name=AbortTransaction_S9 */
.
UDN: 'S9F1' /* Name=UnrecognizedDeviceID */
<B [1] 0x00 > /* Name=MHEAD */
.
USN: 'S9F3' /* Name=UnrecognizedStreamType */
<B [1] 0x00 > /* Name=MHEAD */
.
UFN: 'S9F5' /* Name=UnrecognizedFunctionType */
<B [1] 0x00 > /* Name=MHEAD */
.
IDN: 'S9F7' /* Name=IllegalData */
<B [1] 0x00 > /* Name=MHEAD */
.
TTN: 'S9F9' /* Name=TransactionTimerTimeout */
<B [1] 0x00 > /* Name=SHEAD */
.
DLN: 'S9F11' /* Name=DataTooLong */
<B [1] 0x00 > /* Name=MHEAD */
.
CTN: 'S9F13' /* Name=ConversationTimeout */
<L [2]
    <A [1] '0' > /* Name=MEXP */
    <B [1] 0x00 > /* Name=EDID */
>
.
ABT_S10: 'S10F0' /* Name=AbortTransaction_S10 */
.
TRN: 'S10F1' W /* Name=TerminalRequest */
<L [2]
    <B [1] 0x00 > /* Name=TID */
    <I1 [1] 0 >
>
.
TRA: 'S10F2' /* Name=TerminalRequestAck_Ack */
<B [1] 0x00 > /* Name=ACKC10 Mapping=Accepted for display */
.
TRA_Nak: 'S10F2' /* Name=TerminalRequestAck_Nak */
<B [1] 0x01 > /* Name=ACKC10 Mapping=Message will not be displayed */
.
VTN: 'S10F3' W /* Name=TerminalDisplaySingle */
<L [2]
    <B [1] 0x00 > /* Name=TID */
    <A [0] ''>
>
.
VTA: 'S10F4' /* Name=TerminalDisplaySingleAck_Ack */
<B [1] 0x00 > /* Name=ACKC10 Mapping=Accepted for display */
.
VTA_Nak: 'S10F4' /* Name=TerminalDisplaySingleAck_Nak */
<B [1] 0x01 > /* Name=ACKC10 Mapping=Message will not be displayed */
.
VTN: 'S10F5' W /* Name=TerminalDisplayMultiBlock */
<L [2]
    <B [1] 0x00 > /* Name=TID */
    <L [1]
        <A [0] ''>
    >
>
.
VMA: 'S10F6' /* Name=TerminalDisplayMultiBlockAck_Ack */
<B [1] 0x00 > /* Name=ACKC10 Mapping=Accepted for display */
.
VMA_Nak: 'S10F6' /* Name=TerminalDisplayMultiBlockAck_Nak */
<B [1] 0x01 > /* Name=ACKC10 Mapping=Message will not be displayed */
.
MNN: 'S10F7' /* Name=MultiBlockNotAllowed */
<B [1] 0x00 > /* Name=TID */
.
BCN: 'S10F9' /* Name=Broadcast */
<I1 [1] 0 >
.
BCA: 'S10F10' /* Name=BroadcastAck_Ack */
<B [1] 0x00 > /* Name=ACKC10 Mapping=Accepted for display */
.
BCA_Nak: 'S10F10' /* Name=BroadcastAck_Nak */
<B [1] 0x01 > /* Name=ACKC10 Mapping=Message will not be displayed */
.
ABT_S12: 'S12F0' /* Name=AbortTransaction_S12 */
.
MSDS: 'S12F1' W /* Name=MapSetUpDataSend */
<L [15]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=IDTYP */
    <U2 [1] 0 > /* Name=FNLOC */
    <U2 [1] 0 > /* Name=FFROT */
    <B [1] 0x00 > /* Name=ORLOC */
    <U1 [0] > /* Name=RPSEL */
    <L [1]
        <I1 [2] 0 0 > /* Name=REFP */
    >
    <A [0] ''> /* Name=DUTMS */
    <I1 [0] > /* Name=XDIES */
    <U1 [0] > /* Name=YDIES  */
    <I1 [0] > /* Name=ROWCT */
    <I1 [0] > /* Name=COLCT */
    <A [0] ''> /* Name=NULBC */
    <U1 [0] > /* Name=PRDCT */
    <B [1] 0x00 > /* Name=PRAXI */
>
.
MSDA: 'S12F2' /* Name=MapSetupDataAck_Ack */
<B [1] 0x00 > /* Name=SDACK Mapping=OK */
.
MSDA_Nak: 'S12F2' /* Name=MapSetupDataAck_Nak */
<B [1] 0x01 > /* Name=SDACK Mapping=Failed */
.
MSDR: 'S12F3' W /* Name=MapSetupDataRequest */
<L [9]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=IDTYP */
    <B [1] 0x00 > /* Name=MAPFT */
    <U2 [1] 0 > /* Name=FNLOC */
    <U2 [1] 0 > /* Name=FFROT */
    <B [1] 0x00 > /* Name=ORLOC */
    <B [1] 0x00 > /* Name=PRAXI */
    <A [1] '0' > /* Name=BCEQU */
    <A [1] '0' > /* Name=NULBC */
>
.
MSD: 'S12F4' /* Name=MapSetUpData */
<L [15]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=IDTYP */
    <U2 [1] 0 > /* Name=FNLOC */
    <B [1] 0x00 > /* Name=ORLOC */
    <U1 [0] > /* Name=RPSEL */
    <L [1]
        <I1 [2] 0 0 > /* Name=REFP */
    >
    <A [0] ''> /* Name=DUTMS */
    <I1 [0] > /* Name=XDIES */
    <U1 [0] > /* Name=YDIES  */
    <I1 [0] > /* Name=ROWCT */
    <I1 [0] > /* Name=COLCT */
    <U1 [0] > /* Name=PRDCT */
    <A [1] '0' > /* Name=BCEQU */
    <A [0] ''> /* Name=NULBC */
    <I1 [0] > /* Name=MLCL */
>
.
MAPTI: 'S12F5' W /* Name=MapTransmitInquire */
<L [4]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=IDTYP */
    <B [1] 0x00 > /* Name=MAPFT */
    <U2 [1] 0 > /* Name=MLCL */
>
.
MAPTG: 'S12F6' /* Name=MapTransmitGrant_Ack */
<B [1] 0x00 > /* Name=GRNT1 Mapping=OK */
.
MAPTG_Nak: 'S12F6' /* Name=MapTransmitGrant_Nak */
<B [1] 0x01 > /* Name=GRNT1 Mapping=Busy, try again */
.
MDS1: 'S12F7' W /* Name=MapDataSendType1 */
<L [3]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=IDTYP */
    <L [1]
        <L [2]
            <I1 [0] > /* Name=RSINF  */
            <U1 [1] 0 > /* Name=BINLT */
        >
    >
>
.
MDA1: 'S12F8' /* Name=MapDataType1Ack_Ack */
<B [1] 0x00 > /* Name=MDACK Mapping=Map received */
.
MDA1: 'S12F8' /* Name=MapDataType1Ack_Nak */
<B [1] 0x01 > /* Name=MDACK Mapping=Format error */
.
MDS2: 'S12F9' W /* Name=MapDataSendType2 */
<L [4]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=IDTYP */
    <I2 [1] 0 > /* Name=STRP */
    <A [1] '0' > /* Name=BINLT */
>
.
MDA2: 'S12F10' /* Name=MapDataType2Ack_Ack */
<B [1] 0x00 > /* Name=MDACK Mapping=Map received */
.
MDA2_Nak: 'S12F10' /* Name=MapDataType2Ack_Nak */
<B [1] 0x01 > /* Name=MDACK Mapping=Format error */
.
MDS3: 'S12F11' W /* Name=MapDataSendType3 */
<L [3]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=IDTYP */
    <L [1]
        <L [2]
            <I1 [0] > /* Name=XYPOS */
            <A [1] '0' > /* Name=BINLT */
        >
    >
>
.
MDA3: 'S12F12' /* Name=MapDataType3Ack_Ack */
<B [1] 0x00 > /* Name=MDACK Mapping=Map received */
.
MDA3_Nak: 'S12F12' /* Name=MapDataType3Ack_Nak */
<B [1] 0x01 > /* Name=MDACK Mapping=Format error */
.
MDR1: 'S12F13' W /* Name=MapDataRequestType1 */
<L [2]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=IDTYP */
>
.
MD1: 'S12F14' /* Name=MapDataType1 */
<L [3]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=IDTYP */
    <L [1]
        <L [2]
            <I1 [0] > /* Name=RSINF  */
            <A [1] '0' > /* Name=BINLT */
        >
    >
>
.
MDR2: 'S12F15' W /* Name=MapDataRequestType2 */
<L [2]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=IDTYP */
>
.
MD2: 'S12F16' /* Name=MapDataType2 */
<L [4]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=IDTYP */
    <I2 [1] 0 > /* Name=STRP */
    <A [1] '0' > /* Name=BINLT */
>
.
MDR3: 'S12F17' W /* Name=MapDataRequestType3 */
<L [3]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=IDTYP */
    <B [1] 0x00 > /* Name=SDBIN */
>
.
MD3: 'S12F18' /* Name=MapDataType3 */
<L [3]
    <B [1] 0x00 > /* Name=MID */
    <B [1] 0x00 > /* Name=IDTYP */
    <L [1]
        <L [2]
            <I1 [0] > /* Name=XYPOS */
            <A [1] '0' > /* Name=BINLT */
        >
    >
>
.
MERS: 'S12F19' /* Name=MapErrorReportSend */
<L [2]
    <B [1] 0x00 > /* Name=MAPER */
    <U1 [1] 0 > /* Name=DATLC */
>
.
ABT_S13: 'S13F0' /* Name=AbortTransaction_S13 */
.
DSSS: 'S13F1' W /* Name=SendDataSetSend */
<L [1]
    <A [1] '0' > /* Name=DSNAME */
>
.
DSSA: 'S13F2' /* Name=SendDataSetAck_Ack */
<L [2]
    <A [1] '0' > /* Name=DSNAME */
    <B [1] 0x00 > /* Name=ACKC13 Mapping=OK */
>
.
DSSA_Nak: 'S13F2' /* Name=SendDataSetAck_Nak */
<L [2]
    <A [1] '0' > /* Name=DSNAME */
    <B [1] 0x01 > /* Name=ACKC13 Mapping=ERROR: Try Later */
>
.
DSOR: 'S13F3' W /* Name=OpenDataSetRequest */
<L [3]
    <I1 [1] 0 > /* Name=HANDLE */
    <A [1] '0' > /* Name=DSNAME */
    <U4 [1] 0 > /* Name=CKPNT */
>
.
DSOD: 'S13F4' /* Name=OpenDataSetData_Ack */
<L [5]
    <I1 [1] 0 > /* Name=HANDLE */
    <A [1] '0' > /* Name=DSNAME */
    <B [1] 0x00 > /* Name=ACKC13 Mapping=OK */
    <I1 [1] 0 > /* Name=RTYPE */
    <I1 [1] 0 > /* Name=RECLEN */
>
.
DSOD_Nak: 'S13F4' /* Name=OpenDataSetData_Nak */
<L [5]
    <I1 [1] 0 > /* Name=HANDLE */
    <A [1] '0' > /* Name=DSNAME */
    <B [1] 0x01 > /* Name=ACKC13 Mapping=ERROR: Try Later */
    <I1 [1] 0 > /* Name=RTYPE */
    <I1 [1] 0 > /* Name=RECLEN */
>
.
DSRR: 'S13F5' W /* Name=ReadDataSetRequest */
<L [2]
    <I2 [1] 0 > /* Name=HANDLE */
    <I2 [1] 0 > /* Name=READLN */
>
.
DSRD_Ack: 'S13F6' /* Name=ReadDataSetData_Ack */
<L [4]
    <I2 [0] > /* Name=HANDLE */
    <B [1] 0x00 > /* Name=ACKC13 Mapping=OK */
    <U4 [0] > /* Name=CKPNT */
    <L [1]
        <B [1] 0x00 > /* Name=FILDAT */
    >
>
.
DSRD_Nak: 'S13F6' /* Name=ReadDataSetData_Nak */
<L [4]
    <I2 [0] > /* Name=HANDLE */
    <B [1] 0x01 > /* Name=ACKC13 Mapping=ERROR: Try Later */
    <U4 [0] > /* Name=CKPNT */
    <L [1]
        <B [1] 0x00 > /* Name=FILDAT */
    >
>
.
DSCS: 'S13F7' W /* Name=CloseDataSetSend */
<L [1]
    <I1 [1] 0 > /* Name=HANDLE */
>
.
DSCA: 'S13F8' /* Name=CloseDataSet_Ack */
<L [2]
    <I1 [1] 0 > /* Name=HANDLE */
    <B [1] 0x00 > /* Name=ACKC13 Mapping=OK */
>
.
DSCA_Nak: 'S13F8' /* Name=CloseDataSet_Nak */
<L [2]
    <I1 [1] 0 > /* Name=HANDLE */
    <B [1] 0x01 > /* Name=ACKC13 Mapping=ERROR: Try Later */
>
.
DSRS: 'S13F9' W /* Name=ResetDataSetSend */
.
DSRA: 'S13F10' /* Name=ResetDataSetAck */
.
DSOMGI: 'S13F11' W /* Name=DataSetObjectMultiBlockInquire_S13 */
<L [3]
    <U2 [1] 0 >
    <A [0] ''> /* Name=OBJSPEC  */
    <I1 [1] 0 > /* Name=DATALENGTH */
>
.
DSOMBG_Ack: 'S13F12' /* Name=DataSetObjectMultiBlockGrant_S13_Ack */
<B [1] 0x00 > /* Name=GRANT Mapping=Permission Granted */
.
DSOMBG_Nak: 'S13F12' /* Name=DataSetObjectMultiBlockGrant_S13_Nak */
<B [1] 0x01 > /* Name=GRANT Mapping=Busy, Try Again */
.
TDS: 'S13F13' W /* Name=TableDataSend */
<L [8]
    <U2 [1] 0 >
    <A [0] ''> /* Name=OBJSPEC  */
    <A [0] ''> /* Name=TBLTYP */
    <A [0] ''> /* Name=TBLID */
    <U1 [0] > /* Name=TBLCMD */
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
    <L [1]
        <A [0] ''> /* Name=COLHDR */
    >
    <L [1]
        <F8 [0] > /* Name=TBLELT */
    >
>
.
TDA: 'S13F14' /* Name=TableDataAck_Ack */
<L [2]
    <U1 [1] 0 > /* Name=TBLACK Mapping=Success */
    <L [1]
        <L [0]
        >
    >
>
.
TDA_Nak: 'S13F14' /* Name=TableDataAck_Nak */
<L [2]
    <U1 [1] 1 > /* Name=TBLACK Mapping=Failure */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
TDR: 'S13F15' W /* Name=TableDataRequest */
<L [7]
    <U2 [1] 0 >
    <A [0] ''> /* Name=OBJSPEC  */
    <A [0] ''> /* Name=TBLTYP */
    <A [0] ''> /* Name=TBLID */
    <U1 [0] > /* Name=TBLCMD */
    <L [1]
        <A [0] ''> /* Name=COLHDR */
    >
    <L [1]
        <F8 [0] > /* Name=TBLELT */
    >
>
.
TD_Ack: 'S13F16' /* Name=TableData_Ack */
<L [6]
    <A [0] ''> /* Name=TBLTYP */
    <A [0] ''> /* Name=TBLID */
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
    <L [1]
        <A [0] ''> /* Name=COLHDR */
    >
    <L [1]
        <F8 [0] > /* Name=TBLELT */
    >
    <L [2]
        <U1 [1] 0 > /* Name=TBLACK Mapping=Success */
        <L [0]
        >
    >
>
.
TD_Nak: 'S13F16' /* Name=TableData_Nak */
<L [6]
    <A [0] ''> /* Name=TBLTYP */
    <A [0] ''> /* Name=TBLID */
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
    <L [1]
        <A [0] ''> /* Name=COLHDR */
    >
    <L [1]
        <F8 [0] > /* Name=TBLELT */
    >
    <L [2]
        <U1 [1] 1 > /* Name=TBLACK Mapping=Failure */
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
ABT_S14: 'S14F0' /* Name=AbortTransaction_S14 */
.
GAR: 'S14F1' /* Name=GetAttrRequest */
<L [5]
    <A [0] ''> /* Name=OBJSPEC  */
    <A [0] ''> /* Name=OBJTYPE  */
    <L [1]
        <A [0] ''> /* Name=OBJID  */
    >
    <L [1]
        <L [3]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
            <U1 [1] 0 > /* Name=ATTRRELN */
        >
    >
    <L [1]
        <U1 [1] 0 > /* Name=ATTRID */
    >
>
.
GAD_Ack: 'S14F2' /* Name=GetAttrData_Ack */
<L [2]
    <L [1]
        <L [2]
            <A [0] ''> /* Name=OBJID  */
            <L [2]
                <U1 [1] 0 > /* Name=ATTRID */
                <B [1] 0x00 > /* Name=ATTRDATA */
            >
        >
    >
    <L [2]
        <U1 [1] 0 > /* Name=OBJACK Mapping=OK */
        <L [1]
            <L [0]
            >
        >
    >
>
.
GAD_Nak: 'S14F2' /* Name=GetAttrData_Nak */
<L [2]
    <L [1]
        <L [2]
            <A [0] ''> /* Name=OBJID  */
            <L [2]
                <U1 [1] 0 > /* Name=ATTRID */
                <B [1] 0x00 > /* Name=ATTRDATA */
            >
        >
    >
    <L [2]
        <U1 [1] 1 > /* Name=OBJACK Mapping=Error */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
SAR: 'S14F3' W /* Name=SetAttrRequest */
<L [4]
    <A [0] ''> /* Name=OBJSPEC  */
    <A [0] ''> /* Name=OBJTYPE  */
    <L [1]
        <A [0] ''> /* Name=OBJID  */
    >
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
>
.
SAD: 'S14F4' /* Name=SetAttrData_Ack */
<L [2]
    <L [1]
        <L [2]
            <A [0] ''> /* Name=OBJID  */
            <L [1]
                <L [2]
                    <U1 [1] 0 > /* Name=ATTRID */
                    <B [1] 0x00 > /* Name=ATTRDATA */
                >
            >
        >
    >
    <L [2]
        <U1 [1] 0 > /* Name=OBJACK Mapping=OK */
        <L [0]
        >
    >
>
.
SAD_Nak: 'S14F4' /* Name=SetAttrData_Nak */
<L [2]
    <L [1]
        <L [2]
            <A [0] ''> /* Name=OBJID  */
            <L [1]
                <L [2]
                    <U1 [1] 0 > /* Name=ATTRID */
                    <B [1] 0x00 > /* Name=ATTRDATA */
                >
            >
        >
    >
    <L [2]
        <U1 [1] 1 > /* Name=OBJACK Mapping=Error */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
GTR: 'S14F5' /* Name=GetTypeRequest */
<A [1] '0' > /* Name=OBJSPEC */
.
GTD_Ack: 'S14F6' /* Name=GetTypeData_Ack */
<L [2]
    <L [1]
        <A [0] ''> /* Name=OBJTYPE  */
    >
    <L [2]
        <U1 [1] 0 > /* Name=OBJACK Mapping=OK */
        <L [0]
        >
    >
>
.
GTD_Nak: 'S14F6' /* Name=GetTypeData_Nak */
<L [2]
    <L [1]
        <A [0] ''> /* Name=OBJTYPE  */
    >
    <L [2]
        <U1 [1] 1 > /* Name=OBJACK Mapping=Error */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
GANR: 'S14F7' /* Name=GetAttrNameRequest */
<L [2]
    <A [0] ''> /* Name=OBJSPEC  */
    <L [1]
        <A [0] ''> /* Name=OBJTYPE  */
    >
>
.
GAND_Ack: 'S14F8' /* Name=GetAttrNameData_Ack */
<L [2]
    <L [1]
        <L [2]
            <A [0] ''> /* Name=OBJTYPE  */
            <L [1]
                <U1 [1] 0 > /* Name=ATTRID */
            >
        >
    >
    <L [2]
        <U1 [1] 0 > /* Name=OBJACK Mapping=OK */
        <L [0]
        >
    >
>
.
GAND_Nak: 'S14F8' /* Name=GetAttrNameData_Nak */
<L [2]
    <L [1]
        <L [2]
            <A [0] ''> /* Name=OBJTYPE  */
            <L [1]
                <U1 [1] 0 > /* Name=ATTRID */
            >
        >
    >
    <L [2]
        <U1 [1] 1 > /* Name=OBJACK Mapping=Error */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
COR: 'S14F9' W /* Name=CreateObjectRequest */
<L [3]
    <A [0] ''> /* Name=OBJSPEC */
    <A [0] ''> /* Name=OBJTYPE */
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
>
.
CAO_Ack: 'S14F10' /* Name=CreateObjectAck_Ack */
<L [3]
    <A [0] ''> /* Name=OBJSPEC  */
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 0 > /* Name=OBJACK Mapping=OK */
        <L [0]
        >
    >
>
.
CAO_Nak: 'S14F10' /* Name=CreateObjectAck_Nak */
<L [3]
    <A [0] ''> /* Name=OBJSPEC  */
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 1 > /* Name=OBJACK Mapping=Error */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
DOR: 'S14F11' W /* Name=DeleteObjectRequest */
<L [2]
    <A [0] ''> /* Name=OBJSPEC  */
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
>
.
DOA_Ack: 'S14F12' /* Name=DeleteObjectAck_Ack */
<L [2]
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 0 > /* Name=OBJACK Mapping=OK */
        <L [0]
        >
    >
>
.
DOA_Nak: 'S14F12' /* Name=DeleteObjectAck_Nak */
<L [2]
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 1 > /* Name=OBJACK Mapping=Error */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
OAR: 'S14F13' W /* Name=ObjectAttachRequest */
<L [2]
    <A [0] ''> /* Name=OBJSPEC */
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
>
.
OAA_Ack: 'S14F14' /* Name=ObjectAttachAck_Ack */
<L [3]
    <U4 [0] > /* Name=OBJTOKEN */
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 0 > /* Name=OBJACK Mapping=OK */
        <L [0]
        >
    >
>
.
OAA_Nak: 'S14F14' /* Name=ObjectAttachAck_Nak */
<L [3]
    <U4 [0] > /* Name=OBJTOKEN */
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 1 > /* Name=OBJACK Mapping=Error */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
AOAR: 'S14F15' W /* Name=AttachedObjectActionRequest */
<L [4]
    <A [0] ''> /* Name=OBJSPEC  */
    <U1 [0] > /* Name=OBJCMD */
    <U4 [0] > /* Name=OBJTOKEN */
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
>
.
AOAA_Ack: 'S14F16' /* Name=AttachedObjectActionAck_Ack */
<L [2]
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 0 > /* Name=OBJACK Mapping=OK */
        <L [0]
        >
    >
>
.
AOAA_Nak: 'S14F16' /* Name=AttachedObjectActionAck_Nak */
<L [2]
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 1 > /* Name=OBJACK Mapping=Error */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
SOAR: 'S14F17' W /* Name=SupervisedObjectActionRequest */
<L [4]
    <A [0] ''> /* Name=OBJSPEC  */
    <U1 [0] > /* Name=OBJCMD */
    <A [0] ''> /* Name=TARGETSPEC */
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
>
.
SOAA_Ack: 'S14F18' /* Name=SupervisedObjectActionAck_Ack */
<L [2]
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 0 > /* Name=OBJACK Mapping=OK */
        <L [0]
        >
    >
>
.
SOAA_Nak: 'S14F18' /* Name=SupervisedObjectActionAck_Nak */
<L [2]
    <L [1]
        <L [2]
            <U1 [1] 0 > /* Name=ATTRID */
            <B [1] 0x00 > /* Name=ATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 1 > /* Name=OBJACK Mapping=Error */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
ABT_S15: 'S15F0' /* Name=AbortTransaction_S15 */
.
S15F1RecipeManagementMultiBlockInquire_S15: 'S15F1' W /* Name=RecipeManagementMultiBlockInquire_S15 */
<L [3]
    <U2 [1] 0 >
    <A [0] ''> /* Name=RCPSPEC */
    <U1 [0] > /* Name=RMDATASIZE */
>
.
S15F2RecipeManagementMultiBlockGrant_S15_Ack: 'S15F2' /* Name=RecipeManagementMultiBlockGrant_S15_Ack */
<B [1] 0x00 > /* Name=RMGRNT Mapping=Permission granted */
.
S15F2RecipeManagementMultiBlockGrant_S15_Nak: 'S15F2' /* Name=RecipeManagementMultiBlockGrant_S15_Nak */
<B [1] 0x01 > /* Name=RMGRNT Mapping=Cannot accept now, try again */
.
S15F3RecipeNamespaceActionRequest: 'S15F3' W /* Name=RecipeNamespaceActionRequest */
<L [2]
    <A [0] ''> /* Name=RMNSSPEC  */
    <U1 [0] > /* Name=RMNSCMD  */
>
.
S15F4RecipeNamespaceActionAck_Ack: 'S15F4' /* Name=RecipeNamespaceActionAck_Ack */
<L [2]
    <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
    <L [0]
    >
>
.
S15F4RecipeNamespaceActionAck_Nak: 'S15F4' /* Name=RecipeNamespaceActionAck_Nak */
<L [2]
    <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S15F5RecipeNamespaceRenameRequest: 'S15F5' W /* Name=RecipeNamespaceRenameRequest */
<L [2]
    <A [0] ''> /* Name=RMNSSPEC  */
    <A [0] ''> /* Name=RMNEWNS */
>
.
S15F6RecipeNamespaceRenameAck_Ack: 'S15F6' /* Name=RecipeNamespaceRenameAck_Ack */
<L [2]
    <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
    <L [0]
    >
>
.
S15F6RecipeNamespaceRenameAck_Nak: 'S15F6' /* Name=RecipeNamespaceRenameAck_Nak */
<L [2]
    <U1 [1] 1 > /* Name=RMACK_Nak Mapping=Cannot perform action */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S15F7RecipeSpaceRequest: 'S15F7' W /* Name=RecipeSpaceRequest */
<A [0] ''> /* Name=OBJSPEC  */
.
S15F8RecipeSpaceData_Ack: 'S15F8' /* Name=RecipeSpaceData_Ack */
<L [2]
    <U8 [0] > /* Name=RMSPACE  */
    <L [2]
        <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
        <L [0]
        >
    >
>
.
S15F8RecipeSpaceData_Nak: 'S15F8' /* Name=RecipeSpaceData_Nak */
<L [2]
    <U8 [0] > /* Name=RMSPACE  */
    <L [2]
        <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S15F9RecipeStatusReport: 'S15F9' W /* Name=RecipeStatusReport */
<A [0] ''> /* Name=RCPSPEC */
.
S15F10RecipeStatusData_Ack: 'S15F10' /* Name=RecipeStatusData_Ack */
<L [3]
    <U1 [0] > /* Name=RCPSTAT */
    <A [0] ''> /* Name=RCPVERS */
    <L [2]
        <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
        <L [0]
        >
    >
>
.
S15F10RecipeStatusData_Nak: 'S15F10' /* Name=RecipeStatusData_Nak */
<L [3]
    <U1 [0] > /* Name=RCPSTAT */
    <A [0] ''> /* Name=RCPVERS */
    <L [2]
        <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S15F11RecipeVersionRequest: 'S15F11' W /* Name=RecipeVersionRequest */
<L [4]
    <A [0] ''> /* Name=RMNSSPEC  */
    <A [0] ''> /* Name=RCPCLASS */
    <A [0] ''> /* Name=RCPNAME */
    <A [0] ''>
>
.
S15F12RecipeVersionData_Ack: 'S15F12' /* Name=RecipeVersionData_Ack */
<L [3]
    <A [0] ''>
    <A [0] ''> /* Name=RCPVERS */
    <L [2]
        <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
        <L [0]
        >
    >
>
.
S15F12RecipeVersionData_Nak: 'S15F12' /* Name=RecipeVersionData_Nak */
<L [3]
    <A [0] ''>
    <A [0] ''> /* Name=RCPVERS */
    <L [2]
        <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S15F13RecipeCreateRequest: 'S15F13' W /* Name=RecipeCreateRequest */
<L [5]
    <U2 [1] 0 >
    <Boolean [1] False > /* Name=RCPUPDT */
    <A [0] ''> /* Name=RCPSPEC */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=RCPATTRID */
            <F8 [0] > /* Name=RCPATTRDATA */
        >
    >
    <U8 [0] > /* Name=RCPBODY */
>
.
S15F14RecipeCreateAck_Ack: 'S15F14' /* Name=RecipeCreateAck_Ack */
<L [2]
    <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
    <L [0]
    >
>
.
S15F14RecipeCreateAck_Nak: 'S15F14' /* Name=RecipeCreateAck_Nak */
<L [2]
    <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S15F15RecipeStoreRequest: 'S15F15' W /* Name=RecipeStoreRequest */
<L [4]
    <U2 [1] 0 >
    <A [0] ''> /* Name=RCPSPEC */
    <B [0] > /* Name=RCPSECCODE */
    <L [3]
        <L [2]
            <A [0] ''> /* Name=RCPSECNM */
            <L [1]
                <L [2]
                    <A [0] ''> /* Name=RCPATTRID */
                    <F8 [0] > /* Name=RCPATTRDATA */
                >
            >
        >
        <U8 [0] > /* Name=RCPBODY */
        <L [1]
            <L [2]
                <A [0] ''> /* Name=RCPSECNM */
                <L [1]
                    <L [2]
                        <A [0] ''> /* Name=RCPATTRID */
                        <F8 [0] > /* Name=RCPATTRDATA */
                    >
                >
            >
        >
    >
>
.
S15F16RecipeStoreAck_Ack: 'S15F16' /* Name=RecipeStoreAck_Ack */
<L [2]
    <B [0] > /* Name=RCPSECCODE */
    <L [2]
        <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
        <L [0]
        >
    >
>
.
S15F16RecipeStoreAck_Nak: 'S15F16' /* Name=RecipeStoreAck_Nak */
<L [2]
    <B [0] > /* Name=RCPSECCODE */
    <L [2]
        <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S15F17RecipeRetrieveRequest: 'S15F17' W /* Name=RecipeRetrieveRequest */
<L [2]
    <A [0] ''> /* Name=RCPSPEC */
    <B [0] > /* Name=RCPSECCODE */
>
.
S15F18RecipeRetrieveData_Ack: 'S15F18' /* Name=RecipeRetrieveData_Ack */
<L [2]
    <L [3]
        <L [2]
            <A [0] ''> /* Name=RCPSECNM */
            <L [1]
                <L [2]
                    <A [0] ''> /* Name=RCPATTRID */
                    <F8 [0] > /* Name=RCPATTRDATA */
                >
            >
        >
        <U8 [0] > /* Name=RCPBODY */
        <L [1]
            <L [2]
                <A [0] ''> /* Name=RCPSECNM */
                <L [1]
                    <L [2]
                        <A [0] ''> /* Name=RCPATTRID */
                        <F8 [0] > /* Name=RCPATTRDATA */
                    >
                >
            >
        >
    >
    <L [2]
        <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
        <L [0]
        >
    >
>
.
S15F18RecipeRetrieveData_Nak: 'S15F18' /* Name=RecipeRetrieveData_Nak */
<L [2]
    <L [3]
        <L [2]
            <A [0] ''> /* Name=RCPSECNM */
            <L [1]
                <L [2]
                    <A [0] ''> /* Name=RCPATTRID */
                    <F8 [0] > /* Name=RCPATTRDATA */
                >
            >
        >
        <U8 [0] > /* Name=RCPBODY */
        <L [1]
            <L [2]
                <A [0] ''> /* Name=RCPSECNM */
                <L [1]
                    <L [2]
                        <A [0] ''> /* Name=RCPATTRID */
                        <F8 [0] > /* Name=RCPATTRDATA */
                    >
                >
            >
        >
    >
    <L [2]
        <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S15F19RecipeRenameRequest: 'S15F19' W /* Name=RecipeRenameRequest */
<L [3]
    <A [0] ''> /* Name=RCPSPEC */
    <Boolean [1] False > /* Name=RCPRENAME */
    <A [0] ''> /* Name=RCPNEWID */
>
.
S15F20RecipeRenameRequest_Ack: 'S15F20' /* Name=RecipeRenameRequest_Ack */
<L [2]
    <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
    <L [0]
    >
>
.
S15F20RecipeRenameRequest_Nak: 'S15F20' /* Name=RecipeRenameRequest_Nak */
<L [2]
    <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S15F21RecipeActionRequest: 'S15F21' W /* Name=RecipeActionRequest */
<L [6]
    <U2 [1] 0 >
    <U1 [0] > /* Name=RCPCMD */
    <A [0] ''> /* Name=RMNSSPEC  */
    <U8 [0] > /* Name=OPID */
    <A [0] ''>
    <L [1]
        <A [0] ''> /* Name=RCPID */
    >
>
.
S15F22RecipeActionAck_Ack: 'S15F22' /* Name=RecipeActionAck_Ack */
<L [4]
    <A [0] ''>
    <U4 [0] > /* Name=LINKID  */
    <U1 [0] > /* Name=RCPCMD */
    <L [2]
        <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
        <L [0]
        >
    >
>
.
S15F22RecipeActionAck_Nak: 'S15F22' /* Name=RecipeActionAck_Nak */
<L [4]
    <A [0] ''>
    <U4 [0] > /* Name=LINKID  */
    <U1 [0] > /* Name=RCPCMD */
    <L [2]
        <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S15F23RecipeDescriptorRequest: 'S15F23' W /* Name=RecipeDescriptorRequest */
<L [3]
    <U2 [1] 0 >
    <A [0] ''> /* Name=OBJSPEC  */
    <L [1]
        <A [0] ''> /* Name=RCPID */
    >
>
.
S15F24RecipeDescriptorData_Ack: 'S15F24' /* Name=RecipeDescriptorData_Ack */
<L [2]
    <L [1]
        <L [1]
            <L [3]
                <A [0] ''> /* Name=RCPDESCNM */
                <A [0] ''> /* Name=RCPDESCTIME */
                <U8 [0] > /* Name=RCPDESCLTH */
            >
        >
    >
    <L [2]
        <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
        <L [0]
        >
    >
>
.
S15F24RecipeDescriptorData_Nak: 'S15F24' /* Name=RecipeDescriptorData_Nak */
<L [2]
    <L [1]
        <L [1]
            <L [3]
                <A [0] ''> /* Name=RCPDESCNM */
                <A [0] ''> /* Name=RCPDESCTIME */
                <U8 [0] > /* Name=RCPDESCLTH */
            >
        >
    >
    <L [2]
        <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S15F25RecipeParameterUpdateRequest: 'S15F25' W /* Name=RecipeParameterUpdateRequest */
<L [4]
    <U2 [1] 0 >
    <A [0] ''> /* Name=RMNSSPEC  */
    <A [0] ''>
    <L [1]
        <L [3]
            <A [0] ''> /* Name=RCPPARNM */
            <F8 [0] > /* Name=RCPPARVAL */
            <A [0] ''> /* Name=RCPPARRULE */
        >
    >
>
.
S15F26RecipeParameterUpdateAck_Ack: 'S15F26' /* Name=RecipeParameterUpdateAck_Ack */
<L [2]
    <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
    <L [0]
    >
>
.
S15F26RecipeParameterUpdateAck_Nak: 'S15F26' /* Name=RecipeParameterUpdateAck_Nak */
<L [2]
    <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S15F27RecipeDownloadRequest: 'S15F27' W /* Name=RecipeDownloadRequest */
<L [5]
    <U2 [1] 0 >
    <Boolean [1] False > /* Name=RCPOWCODE */
    <A [0] ''> /* Name=RCPSPEC */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=RCPATTRID */
            <F8 [0] > /* Name=RCPATTRDATA */
        >
    >
    <U8 [0] > /* Name=RCPBODY */
>
.
S15F28RecipeDownloadAck_Ack: 'S15F28' /* Name=RecipeDownloadAck_Ack */
<L [3]
    <A [0] ''> /* Name=RCPID */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=RCPATTRID */
            <F8 [0] > /* Name=RCPATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
        <L [0]
        >
    >
>
.
S15F28RecipeDownloadAck_Nak: 'S15F28' /* Name=RecipeDownloadAck_Nak */
<L [3]
    <A [0] ''> /* Name=RCPID */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=RCPATTRID */
            <F8 [0] > /* Name=RCPATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S15F29RecipeVerifyRequest: 'S15F29' W /* Name=RecipeVerifyRequest */
<L [4]
    <U2 [1] 0 >
    <U8 [0] > /* Name=OPID */
    <A [0] ''> /* Name=RESPEC */
    <L [1]
        <A [0] ''> /* Name=RCPID */
    >
>
.
S15F30RecipeVerifyAck_Ack: 'S15F30' /* Name=RecipeVerifyAck_Ack */
<L [5]
    <U8 [0] > /* Name=OPID */
    <U4 [0] > /* Name=LINKID  */
    <A [0] ''> /* Name=RCPID */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=RCPATTRID */
            <F8 [0] > /* Name=RCPATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
        <L [0]
        >
    >
>
.
S15F30RecipeVerifyAck_Nak: 'S15F30' /* Name=RecipeVerifyAck_Nak */
<L [5]
    <U8 [0] > /* Name=OPID */
    <U4 [0] > /* Name=LINKID  */
    <A [0] ''> /* Name=RCPID */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=RCPATTRID */
            <F8 [0] > /* Name=RCPATTRDATA */
        >
    >
    <L [2]
        <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S15F31RecipeUploadRequest: 'S15F31' W /* Name=RecipeUploadRequest */
<A [0] ''> /* Name=RCPSPEC */
.
S15F32RecipeUploadData_Ack: 'S15F32' /* Name=RecipeUploadData_Ack */
<L [4]
    <A [0] ''> /* Name=RCPSPEC */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=RCPATTRID */
            <F8 [0] > /* Name=RCPATTRDATA */
        >
    >
    <U8 [0] > /* Name=RCPBODY */
    <L [2]
        <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
        <L [0]
        >
    >
>
.
S15F32RecipeUploadData_Nak: 'S15F32' /* Name=RecipeUploadData_Nak */
<L [4]
    <A [0] ''> /* Name=RCPSPEC */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=RCPATTRID */
            <F8 [0] > /* Name=RCPATTRDATA */
        >
    >
    <U8 [0] > /* Name=RCPBODY */
    <L [2]
        <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S15F33RecipeSelectRequest: 'S15F33' W /* Name=RecipeSelectRequest */
<L [3]
    <U2 [1] 0 >
    <A [0] ''> /* Name=RESPEC */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=RCPID */
            <L [1]
                <L [2]
                    <A [0] ''> /* Name=RCPPARNM */
                    <F8 [0] > /* Name=RCPPARVAL */
                >
            >
        >
    >
>
.
S15F34RecipeSelectAck_Ack: 'S15F34' /* Name=RecipeSelectAck_Ack */
<L [2]
    <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
    <L [0]
    >
>
.
S15F34RecipeSelectAck_Nak: 'S15F34' /* Name=RecipeSelectAck_Nak */
<L [2]
    <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S15F35RecipeDeleteRequest: 'S15F35' W /* Name=RecipeDeleteRequest */
<L [4]
    <U2 [1] 0 >
    <A [0] ''> /* Name=RESPEC */
    <U1 [0] > /* Name=RCPDEL */
    <L [1]
        <A [0] ''> /* Name=RCPID */
    >
>
.
S15F36RecipeDeleteAck_Ack: 'S15F36' /* Name=RecipeDeleteAck_Ack */
<L [2]
    <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
    <L [0]
    >
>
.
S15F36RecipeDeleteAck_Nak: 'S15F36' /* Name=RecipeDeleteAck_Nak */
<L [2]
    <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S15F37DRNSSegmentApproveActionRequest: 'S15F37' W /* Name=DRNSSegmentApproveActionRequest */
<L [6]
    <A [0] ''> /* Name=RMSEGSPEC */
    <U4 [0] > /* Name=OBJTOKEN */
    <B [0] > /* Name=RMGRNT */
    <U8 [0] > /* Name=OPID */
    <A [0] ''> /* Name=RCPID */
    <U1 [0] > /* Name=RMCHGTYPE */
>
.
S15F38DRNSSegmentApproveActionAck_Ack: 'S15F38' /* Name=DRNSSegmentApproveActionAck_Ack */
<L [2]
    <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
    <L [0]
    >
>
.
S15F38DRNSSegmentApproveActionAck_Nak: 'S15F38' /* Name=DRNSSegmentApproveActionAck_Nak */
<L [2]
    <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S15F39DRNSRecorderSegmentRequest: 'S15F39' W /* Name=DRNSRecorderSegmentRequest */
<L [5]
    <U2 [1] 0 >
    <U1 [0] > /* Name=RMNSCMD  */
    <A [0] ''> /* Name=RMRECSPEC  */
    <A [0] ''> /* Name=RMSEGSPEC */
    <U4 [0] > /* Name=OBJTOKEN */
>
.
S15F40DRNSRecorderSegmentAck_Ack: 'S15F40' /* Name=DRNSRecorderSegmentAck_Ack */
<L [2]
    <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
    <L [0]
    >
>
.
S15F40DRNSRecorderSegmentAck_Nak: 'S15F40' /* Name=DRNSRecorderSegmentAck_Nak */
<L [2]
    <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S15F41DRNSRecorderModifyRequest: 'S15F41' W /* Name=DRNSRecorderModifyRequest */
<L [5]
    <U2 [1] 0 >
    <A [0] ''> /* Name=RMRECSPEC  */
    <U4 [0] > /* Name=OBJTOKEN */
    <U1 [0] > /* Name=RMNSCMD  */
    <L [7]
        <A [0] ''> /* Name=RCPID */
        <A [0] ''> /* Name=RCPNEWID */
        <A [0] ''> /* Name=RMSEGSPEC */
        <U1 [0] > /* Name=RMCHGTYPE */
        <U8 [0] > /* Name=OPID */
        <A [0] ''> /* Name=TIMESTAMP  */
        <Boolean [1] False > /* Name=RMREQUESTOR  */
    >
>
.
S15F42DRNSRecorderModifyAck_Ack: 'S15F42' /* Name=DRNSRecorderModifyAck_Ack */
<L [2]
    <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
    <L [0]
    >
>
.
S15F42DRNSRecorderModifyAck_Nak: 'S15F42' /* Name=DRNSRecorderModifyAck_Nak */
<L [2]
    <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S15F43DRNSGetChangeRequest: 'S15F43' W /* Name=DRNSGetChangeRequest */
<L [3]
    <U2 [1] 0 >
    <A [0] ''> /* Name=OBJSPEC  */
    <A [0] ''> /* Name=TARGETSPEC */
>
.
S15F44DRNSGetChangeRequestData_Ack: 'S15F44' /* Name=DRNSGetChangeRequestData_Ack */
<L [2]
    <L [1]
        <L [7]
            <A [0] ''> /* Name=RCPID */
            <A [0] ''> /* Name=RCPNEWID */
            <A [0] ''> /* Name=RMSEGSPEC */
            <U1 [0] > /* Name=RMCHGTYPE */
            <U8 [0] > /* Name=OPID */
            <A [0] ''> /* Name=TIMESTAMP  */
            <Boolean [1] False > /* Name=RMREQUESTOR  */
        >
    >
    <L [2]
        <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
        <L [0]
        >
    >
>
.
S15F44DRNSGetChangeRequestData_Nak: 'S15F44' /* Name=DRNSGetChangeRequestData_Nak */
<L [2]
    <L [1]
        <L [7]
            <A [0] ''> /* Name=RCPID */
            <A [0] ''> /* Name=RCPNEWID */
            <A [0] ''> /* Name=RMSEGSPEC */
            <U1 [0] > /* Name=RMCHGTYPE */
            <U8 [0] > /* Name=OPID */
            <A [0] ''> /* Name=TIMESTAMP  */
            <Boolean [1] False > /* Name=RMREQUESTOR  */
        >
    >
    <L [2]
        <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S15F45DRNSManagerSegmentChangeApprovalRequest: 'S15F45' W /* Name=DRNSManagerSegmentChangeApprovalRequest */
<L [4]
    <U2 [1] 0 >
    <A [0] ''> /* Name=RCPSPEC */
    <A [0] ''> /* Name=RCPNEWID */
    <U1 [0] > /* Name=RMCHGTYPE */
>
.
S15F46DRNSManagerSegmentApprovalAck_Ack: 'S15F46' /* Name=DRNSManagerSegmentApprovalAck_Ack */
<L [3]
    <U1 [0] > /* Name=RMCHGTYPE */
    <B [1] 0x00 > /* Name=RMGRNT Mapping=Permission granted */
    <U8 [0] > /* Name=OPID */
>
.
S15F46DRNSManagerSegmentApprovalAck_Nak: 'S15F46' /* Name=DRNSManagerSegmentApprovalAck_Nak */
<L [3]
    <U1 [0] > /* Name=RMCHGTYPE */
    <B [1] 0x01 > /* Name=RMGRNT Mapping=Cannot accept now, tryagain */
    <U8 [0] > /* Name=OPID */
>
.
S15F47DRNSManagerRebuildRequest: 'S15F47' W /* Name=DRNSManagerRebuildRequest */
<L [5]
    <U2 [1] 0 >
    <A [0] ''> /* Name=OBJSPEC  */
    <A [0] ''> /* Name=RMNSSPEC  */
    <A [0] ''> /* Name=RMRECSPEC  */
    <L [1]
        <A [0] ''> /* Name=RMSEGSPEC */
    >
>
.
S15F48DRNSManagerRebuildAck_Ack: 'S15F48' /* Name=DRNSManagerRebuildAck_Ack */
<L [2]
    <U1 [1] 0 > /* Name=RMACK Mapping=Successful completion */
    <L [0]
    >
>
.
S15F48DRNSManagerRebuildAck_Nak: 'S15F48' /* Name=DRNSManagerRebuildAck_Nak */
<L [2]
    <U1 [1] 1 > /* Name=RMACK Mapping=Cannot perform action */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S16F0AbortTransaction_S16: 'S16F0' /* Name=AbortTransaction_S16 */
.
PRJI: 'S16F1' W /* Name=MultiBlockProcessJobDataInquire_S16 */
<L [2]
    <U2 [1] 0 >
    <I1 [1] 0 > /* Name=DATALENGTH */
>
.
PRJG_Ack: 'S16F2' /* Name=MultiBlockProcessJobDataGrant_S16_Ack */
<B [1] 0x00 > /* Name=GRANT Mapping=Permission Granted */
.
PRJG_Nak: 'S16F2' /* Name=MultiBlockProcessJobDataGrant_S16_Nak */
<B [1] 0x01 > /* Name=GRANT Mapping=Busy, Try Again */
.
PRJCR: 'S16F3' W /* Name=ProcessJobCreateRequest */
<L [5]
    <U2 [1] 0 >
    <B [1] 0x00 > /* Name=MF */
    <L [1]
        <A [0] ''> /* Name=MID */
    >
    <L [3]
        <A [0] ''> /* Name=PRRECIPEMETHOD  */
        <A [0] ''> /* Name=RCPSPEC */
        <L [1]
            <L [2]
                <A [0] ''> /* Name=RCPPARNM */
                <F8 [0] > /* Name=RCPPARVAL */
            >
        >
    >
    <Boolean [1] False > /* Name=PRPROCESSSTART  */
>
.
PRJCA: 'S16F4' /* Name=ProcessJobCreateAck */
<L [2]
    <A [0] ''> /* Name=PRJOBID */
    <L [2]
        <Boolean [1] True > /* Name=ACKA Mapping=Success */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
PRJCMDR: 'S16F5' W /* Name=ProcessJobCommandRequest */
<L [4]
    <U2 [1] 0 >
    <A [0] ''> /* Name=PRJOBID */
    <A [0] ''> /* Name=PRCMDNAME */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=CPNAME */
            <B [0] > /* Name=CPVAL */
        >
    >
>
.
PRJCMDA: 'S16F6' /* Name=ProcessJobCommandAck */
<L [2]
    <A [0] ''> /* Name=PRJOBID */
    <L [2]
        <Boolean [1] True > /* Name=ACKA Mapping=Success */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
PRJA: 'S16F7' W /* Name=ProcessJobAlertNotify */
<L [4]
    <A [0] ''> /* Name=TIMESTAMP  */
    <A [0] ''> /* Name=PRJOBID */
    <U8 [0] > /* Name=PRJOBMILESTONE */
    <L [2]
        <Boolean [1] False > /* Name=ACKA */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
PRJAC: 'S16F8' /* Name=ProcessJobAlertConfirm */
.
PRJE: 'S16F9' W /* Name=ProcessJobEventNotify */
<L [4]
    <U8 [0] > /* Name=PREVENTID */
    <A [0] ''> /* Name=TIMESTAMP  */
    <A [0] ''> /* Name=PRJOBID */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=VID */
            <B [1] 0x00 > /* Name=V */
        >
    >
>
.
PRJEC: 'S16F10' /* Name=ProcessJobEventConfirm */
.
PRJCE: 'S16F11' W /* Name=PRJobCreateEnh_Carrier */
<L [7]
    <U2 [1] 0 >
    <A [0] ''> /* Name=PRJOBID */
    <A [2] '13' > /* Name=MF */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=CARRIERID  */
            <L [1]
                <I1 [0] > /* Name=SLOTID  */
            >
        >
    >
    <L [3]
        <I1 [0] > /* Name=PRRECIPEMETHOD  */
        <A [0] ''> /* Name=RCPSPEC  */
        <L [1]
            <L [2]
                <A [0] ''> /* Name=RCPPARNM  */
                <A [0] ''> /* Name=RCPPARVAL  */
            >
        >
    >
    <Boolean [1] False > /* Name=PRPROCESSSTART  */
    <A [0] ''> /* Name=PRPAUSEEVENT  */
>
.
S16F11: 'S16F11' W /* Name=PRJobCreateEnh_substrate */
<L [7]
    <U2 [1] 0 >
    <A [0] ''> /* Name=PRJOBID */
    <A [2] '14' > /* Name=MF */
    <L [1]
        <A [0] ''> /* Name=MID  */
    >
    <L [3]
        <I1 [0] > /* Name=PRRECIPEMETHOD  */
        <A [0] ''> /* Name=RCPSPEC  */
        <L [1]
            <L [2]
                <A [0] ''> /* Name=RCPPARNM  */
                <A [0] ''> /* Name=RCPPARVAL  */
            >
        >
    >
    <Boolean [1] False > /* Name=PRPROCESSSTART  */
    <A [0] ''> /* Name=PRPAUSEEVENT  */
>
.
S16F12: 'S16F12' /* Name=PRJobCrateEnhAcknowledge */
<L [2]
    <A [0] ''> /* Name=PRJOBID */
    <L [2]
        <Boolean [1] True > /* Name=ACKA Mapping=Success */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S16F13: 'S16F13' W /* Name=PRJobDuplicateCreate_carrier */
<L [5]
    <U2 [1] 0 >
    <L [1]
        <L [3]
            <A [0] ''> /* Name=PRJOBID */
            <A [2] '13' > /* Name=MF */
            <L [1]
                <L [2]
                    <A [0] ''> /* Name=CARRIERID  */
                    <L [1]
                        <I1 [0] > /* Name=SLOTID  */
                    >
                >
            >
        >
    >
    <L [3]
        <I1 [0] > /* Name=PRRECIPEMETHOD  */
        <A [0] ''> /* Name=RCPSPEC  */
        <L [1]
            <L [2]
                <A [0] ''> /* Name=RCPPARNM  */
                <A [0] ''> /* Name=RCPPARVAL  */
            >
        >
    >
    <Boolean [1] False > /* Name=PRPROCESSSTART  */
    <A [0] ''> /* Name=PRPAUSEEVENT  */
>
.
S16F13: 'S16F13' W /* Name=PRJobDuplicateCreate_substrate */
<L [5]
    <U2 [1] 0 >
    <L [1]
        <L [3]
            <A [0] ''> /* Name=PRJOBID */
            <A [2] '14' > /* Name=MF */
            <L [1]
                <A [0] ''> /* Name=MID  */
            >
        >
    >
    <L [3]
        <I1 [0] > /* Name=PRRECIPEMETHOD  */
        <A [0] ''> /* Name=RCPSPEC  */
        <L [1]
            <L [2]
                <A [0] ''> /* Name=RCPPARNM  */
                <A [0] ''> /* Name=RCPPARVAL  */
            >
        >
    >
    <Boolean [1] False > /* Name=PRPROCESSSTART  */
    <A [0] ''> /* Name=PRPAUSEEVENT  */
>
.
S16F14: 'S16F14' /* Name=PRJobDuplicateCrateAcknowledge */
<L [2]
    <L [1]
        <A [0] ''> /* Name=PRJOBID */
    >
    <L [2]
        <Boolean [1] True > /* Name=ACKA Mapping=Success */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S16F15: 'S16F15' W /* Name=PRJobMultiCreate_carrier */
<L [2]
    <U2 [1] 0 > /* Name=DATAID */
    <L [1]
        <L [6]
            <A [0] ''> /* Name=PRJOBID */
            <A [2] '13' > /* Name=MF */
            <L [1]
                <L [2]
                    <A [0] ''> /* Name=CARRIERID  */
                    <L [1]
                        <I1 [0] > /* Name=SLOTID  */
                    >
                >
            >
            <L [3]
                <I1 [0] > /* Name=PRRECIPEMETHOD  */
                <A [0] ''> /* Name=RCPSPEC  */
                <L [1]
                    <L [2]
                        <A [0] ''> /* Name=RCPPARNM  */
                        <A [0] ''> /* Name=RCPPARVAL  */
                    >
                >
            >
            <Boolean [1] False > /* Name=PRPROCESSSTART  */
            <A [0] ''> /* Name=PRPAUSEEVENT  */
        >
    >
>
.
S16F15: 'S16F15' W /* Name=PRJobMultiCreate_substrate */
<L [2]
    <U2 [1] 0 > /* Name=DATAID */
    <L [1]
        <L [6]
            <A [0] ''> /* Name=PRJOBID */
            <A [2] '13' > /* Name=MF */
            <L [1]
                <A [0] ''> /* Name=MID  */
            >
            <L [3]
                <I1 [0] > /* Name=PRRECIPEMETHOD  */
                <A [0] ''> /* Name=RCPSPEC  */
                <L [1]
                    <L [2]
                        <A [0] ''> /* Name=RCPPARNM  */
                        <A [0] ''> /* Name=RCPPARVAL  */
                    >
                >
            >
            <Boolean [1] False > /* Name=PRPROCESSSTART  */
            <A [0] ''> /* Name=PRPAUSEEVENT  */
        >
    >
>
.
S16F16: 'S16F16' /* Name=PRJobMultiCrateAcknowledge */
<L [2]
    <L [1]
        <A [0] ''> /* Name=PRJOBID */
    >
    <L [2]
        <Boolean [1] True > /* Name=ACKA Mapping=Success */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S16F17: 'S16F17' W /* Name=PRJobDequeue */
<L [1]
    <A [0] ''> /* Name=PRJOBID */
>
.
S16F18: 'S16F18' /* Name=PRJobDequeue_Acknowledge */
<L [1]
    <L [2]
        <A [0] ''> /* Name=PRJOBID */
        <L [2]
            <Boolean [1] True > /* Name=ACKA Mapping=Success */
            <L [1]
                <L [2]
                    <I2 [1] 0 > /* Name=ERRCODE */
                    <A [0] ''> /* Name=ERRTEXT */
                >
            >
        >
    >
>
.
S16F19: 'S16F19' W /* Name=PRGetAllObjects */
.
S16F20: 'S16F20' /* Name=PRGetObjectsSend */
<L [1]
    <L [2]
        <A [0] ''> /* Name=PRJOBID */
        <A [0] ''> /* Name=PRSTATE  */
    >
>
.
S16F21: 'S16F21' W /* Name=PRGetSpace */
.
S16F22: 'S16F22' /* Name=PRGetSpace_Send */
<I2 [0] > /* Name=PRJOBSPACE  */
.
S16F23: 'S16F23' W /* Name=PRJobSetRecipeVariable */
<L [2]
    <A [0] ''> /* Name=PRJOBID */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=RCPPARNM  */
            <A [0] ''> /* Name=RCPPARVAL  */
        >
    >
>
.
S16F24: 'S16F24' /* Name=PRJobSetRecipeVariable_Acknowledge */
<L [2]
    <Boolean [1] True > /* Name=ACKA Mapping=Success */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S16F25: 'S16F25' W /* Name=PRJobSetStartMethod */
<L [2]
    <L [1]
        <A [0] ''> /* Name=PRJOBID */
    >
    <Boolean [1] False > /* Name=PRPROCESSSTART  */
>
.
S16F26: 'S16F26' /* Name=PRJobSetStartMethod_Acknowledge */
<L [2]
    <L [1]
        <A [0] ''> /* Name=PRJOBID */
    >
    <L [2]
        <Boolean [1] True > /* Name=ACKA Mapping=Success */
        <L [1]
            <L [2]
                <I2 [1] 0 > /* Name=ERRCODE */
                <A [0] ''> /* Name=ERRTEXT */
            >
        >
    >
>
.
S16F27: 'S16F27' W /* Name=ControlJobCommandRequest */
<L [3]
    <A [0] ''> /* Name=CTLJOBID  */
    <I1 [0] > /* Name=CTLJOBCMD  */
    <L [2]
        <A [0] ''> /* Name=CPNAME  */
        <I1 [0] > /* Name=CPVAL  */
    >
>
.
S16F28: 'S16F28' /* Name=ControlJobCommandAcknowledge */
<L [2]
    <Boolean [1] True > /* Name=ACKA Mapping=Success */
    <L [1]
        <L [2]
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S16F29: 'S16F29' W /* Name=PRSetMtrlOrder */
<I1 [0] > /* Name=PRMTRLORDER  */
.
S16F30: 'S16F30' /* Name=PRSetMtrlOrder_Acknowledge */
<Boolean [1] True > /* Name=ACKA Mapping=Success */
.
S17F0: 'S17F0' /* Name=AbortTransaction_S17 */
.
S17F1: 'S17F1' W /* Name=DataReportCreateRequest */
<L [4]
    <U2 [1] 0 >
    <A [0] ''> /* Name=RPTID */
    <A [0] ''> /* Name=DATASRC */
    <L [1]
        <A [0] ''> /* Name=VID */
    >
>
.
S17F2: 'S17F2' /* Name=DataReportCreateAck */
<L [2]
    <A [0] ''> /* Name=RPTID */
    <I2 [1] 0 > /* Name=ERRCODE Mapping=No error */
>
.
S17F3: 'S17F3' W /* Name=DataReportDeleteRequest */
<L [1]
    <A [0] ''> /* Name=RPTID */
>
.
S17F4: 'S17F4' /* Name=DataReportDeleteAck */
<L [2]
    <Boolean [1] True > /* Name=ACKA Mapping=Success */
    <L [1]
        <L [3]
            <A [0] ''> /* Name=RPTID */
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S17F5: 'S17F5' W /* Name=TraceCreateRequest */
<L [6]
    <U2 [1] 0 >
    <A [0] ''> /* Name=TRID */
    <Boolean [1] True > /* Name=CEED */
    <L [1]
        <A [0] ''> /* Name=RPTID */
    >
    <F8 [0] > /* Name=TRSPER */
    <L [8]
        <A [2] '10' > /* Name=TOTSMP */
        <A [0] ''> /* Name=REPGSZ */
        <A [0] ''> /* Name=EVNTSRC */
        <U2 [1] 0 > /* Name=CEID */
        <A [0] ''> /* Name=EVNTSRC */
        <U2 [1] 0 > /* Name=CEID */
        <Boolean [1] False > /* Name=TRAUTOD */
        <Boolean [1] False > /* Name=RPTOC */
    >
>
.
S17F6: 'S17F6' /* Name=TraceCreateAck */
<L [2]
    <A [0] ''> /* Name=TRID */
    <I2 [1] 0 > /* Name=ERRCODE Mapping=No error */
>
.
S17F7: 'S17F7' W /* Name=TraceDeleteRequest */
<L [1]
    <A [0] ''> /* Name=TRID */
>
.
S17F8: 'S17F8' /* Name=TraceDeleteAck */
<L [2]
    <Boolean [1] True > /* Name=ACKA Mapping=Success */
    <L [1]
        <L [3]
            <A [0] ''> /* Name=TRID */
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S17F9: 'S17F9' W /* Name=CollectionEventLinkRequest */
<L [4]
    <U2 [1] 0 >
    <A [0] ''> /* Name=EVNTSRC */
    <U2 [1] 0 > /* Name=CEID */
    <L [1]
        <A [0] ''> /* Name=RPTID */
    >
>
.
S17F10: 'S17F10' /* Name=CollectionEventLinkAck */
<L [3]
    <A [0] ''> /* Name=EVNTSRC */
    <U2 [1] 0 > /* Name=CEID */
    <I2 [1] 0 > /* Name=ERRCODE Mapping=No error */
>
.
S17F11: 'S17F11' W /* Name=CollectionEventUnlinkRequest */
<L [3]
    <A [0] ''> /* Name=EVNTSRC */
    <U2 [1] 0 > /* Name=CEID */
    <A [0] ''> /* Name=RPTID */
>
.
S17F12: 'S17F12' /* Name=CollectionEventUnlinkAck */
<L [4]
    <A [0] ''> /* Name=EVNTSRC */
    <U2 [1] 0 > /* Name=CEID */
    <A [0] ''> /* Name=RPTID */
    <I2 [1] 0 > /* Name=ERRCODE Mapping=No error */
>
.
S17F13: 'S17F13' W /* Name=TraceResetRequest */
<L [1]
    <A [0] ''> /* Name=TRID */
>
.
S17F14: 'S17F14' /* Name=TraceReportResetAck */
<L [2]
    <Boolean [1] True > /* Name=ACKA Mapping=Success */
    <L [1]
        <L [3]
            <A [0] ''> /* Name=TRID */
            <I2 [1] 0 > /* Name=ERRCODE */
            <A [0] ''> /* Name=ERRTEXT */
        >
    >
>
.
S18F0: 'S18F0' /* Name=AbortTransaction_S18 */
.
S18F1: 'S18F1' W /* Name=ReadAttributeRequest */
<L [2]
    <A [0] ''> /* Name=TARGETID  */
    <L [1]
        <A [0] ''> /* Name=ATTRID  */
    >
>
.
S18F2: 'S18F2' /* Name=ReadAttributeData */
<L [3]
    <A [0] ''> /* Name=TARGETID  */
    <A [0] ''> /* Name=SSACK  */
    <L [1]
        <A [0] ''> /* Name=ATTRDATA  */
    >
>
.
S18F3: 'S18F3' W /* Name=WriteAttributeRequest */
<L [2]
    <A [0] ''> /* Name=TARGETID  */
    <L [1]
        <L [2]
            <A [0] ''> /* Name=ATTRID  */
            <A [0] ''> /* Name=ATTRDATA  */
        >
    >
>
.
S18F4: 'S18F4' /* Name=WriteAttributeAcknowledge */
<L [3]
    <A [0] ''> /* Name=TARGETID  */
    <A [0] ''> /* Name=SSACK  */
    <L [1]
        <A [0] ''> /* Name=STATUS  */
    >
>
.
S18F5: 'S18F5' W /* Name=ReadRequest */
<L [3]
    <A [0] ''> /* Name=TARGETID  */
    <A [0] ''> /* Name=DATASEG  */
    <U1 [0] > /* Name=DATALENGTH  */
>
.
S18F6: 'S18F6' /* Name=ReadData */
<L [3]
    <A [0] ''> /* Name=TARGETID  */
    <A [0] ''> /* Name=SSACK  */
    <A [0] ''> /* Name=DATA  */
>
.
S18F7: 'S18F7' W /* Name=WriteDataRequest */
<L [4]
    <A [0] ''> /* Name=TARGETID  */
    <A [0] ''> /* Name=DATASEG  */
    <U1 [0] > /* Name=DATALENGTH  */
    <A [0] ''> /* Name=DATA  */
>
.
S18F8: 'S18F8' /* Name=WriteDataAcknowledge */
<L [3]
    <A [0] ''> /* Name=TARGETID  */
    <A [0] ''> /* Name=SSACK  */
    <L [1]
        <A [0] ''> /* Name=STATUS  */
    >
>
.
S18F9: 'S18F9' W /* Name=ReadIDRequest */
<A [0] ''> /* Name=TARGETID  */
.
S18F10: 'S18F10' /* Name=ReadIDData */
<L [4]
    <A [0] ''> /* Name=TARGETID  */
    <A [0] ''> /* Name=SSACK  */
    <A [0] ''> /* Name=MID  */
    <L [1]
        <A [0] ''> /* Name=STATUS  */
    >
>
.
S18F11: 'S18F11' W /* Name=WriteIDRequest */
<L [2]
    <A [0] ''> /* Name=TARGETID  */
    <A [0] ''> /* Name=MID  */
>
.
S18F12: 'S18F12' /* Name=WriteIDAcknowledge */
<L [3]
    <A [0] ''> /* Name=TARGETID  */
    <A [0] ''> /* Name=SSACK  */
    <L [1]
        <A [0] ''> /* Name=STATUS  */
    >
>
.
S18F13: 'S18F13' W /* Name=SubsystemCommandRequest */
<L [3]
    <A [0] ''> /* Name=TARGETID  */
    <A [0] ''> /* Name=SSCMD  */
    <L [1]
        <I1 [0] > /* Name=CPVAL  */
    >
>
.
S18F14: 'S18F14' /* Name=SubsystemCommandAcknowledge */
<L [3]
    <A [0] ''> /* Name=TARGETID  */
    <A [0] ''> /* Name=SSACK  */
    <L [1]
        <A [0] ''> /* Name=STATUS  */
    >
>
.
