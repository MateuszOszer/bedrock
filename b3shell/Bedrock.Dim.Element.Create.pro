﻿601,100
602,"Bedrock.Dim.Element.Create"
562,"NULL"
586,
585,
564,
565,"r95THfhjSgS0;6\07waA@Td>oAIqI^mRvbG7TVrJ9d0PJ\Jgal1kW[DQjctFfv7fKocbv_?U<BdnugO]Uo_oj7H9tCM1viP^fPFhfLArXs@35xnL4=4]^u0C?TgiZ1x;FK>Ej6pXd8^bQHf`z[8]rJi1PG3ZC6Mr_5RlQLlOAb`hkfU]XFADPV3gr1n[\PIQ>CX4n4n="
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,","
588,"."
589,"."
568,""""
570,
571,
569,0
592,0
599,1000
560,5
pDimension
pElement
pElementType
pInsertionPoint
pDebug
561,5
2
2
2
2
1
590,5
pDimension,""
pElement,""
pElementType,""
pInsertionPoint,""
pDebug,0
637,5
pDimension,"Mandatory: Dimension Name"
pElement,"Mandatory: Element Name"
pElementType,"Optional: Element Type N S C (default value N)"
pInsertionPoint,"Optional: Insertion point (default value blank)"
pDebug,"Optional: Debug Mode"
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,58

#****Begin: Generated Statements***
#****End: Generated Statements****

################################################################################################# 
##~~Join the bedrock TM1 community on GitHub https://github.com/cubewise-code/bedrock Ver 4.0~~##
################################################################################################# 

#This Process was changed into shell, that will call another process from Bedrock v4.

# This process will create new element in a dimension
##Global Variables
StringGlobalVariable('sProcessReturnCode');
NumericGlobalVariable('nProcessReturnCode');
nProcessReturnCode= 0;

### Constants ###
cThisProcName     = GetProcessName();
cUserName         = TM1User();
cMsgErrorContent  = 'User:%cUserName% Process:%cThisProcName% ErrorMsg:%sMessage%';
cTimeStamp        = TimSt( Now, '\Y\m\d\h\i\s' );
sRandomInt        = NumberToString( INT( RAND( ) * 1000 ));
cDebugFile        = GetProcessErrorFileDirectory | cThisProcName | '.' | cTimeStamp | '.' | sRandomInt ;
cDebugFile        = GetProcessErrorFileDirectory | cThisProcName | '.' | cTimeStamp | '.' | sRandomInt ;

### Initialise Debug ###
If( pDebug >= 1 );
  # Set debug file name
  sDebugFile = cDebugFile | 'Prolog.debug';
  # Log start time
  AsciiOutput( sDebugFile, 'Process Started: ' | TimSt( Now, '\d-\m-\Y \h:\i:\s' ) );
  # Log parameters
  AsciiOutput( sDebugFile, 'Parameters: pDimension   : ' | pDimension );
  AsciiOutput( sDebugFile, '            pElement         : ' | pElement );
  AsciiOutput( sDebugFile, '            pElementType : ' | pElementType );
  AsciiOutput( sDebugFile, '            pInsertionPoint: ' | pInsertionPoint );
EndIf;


nRet = EXECUTEPROCESS('}bedrock.hier.element.create',
  'pLogOutput', pDebug,
  'pStrictErrorHandling','1',
  'pDim', pDimension,
  'pHier', '',
  'pEle', pElement,
  'pEleType', pElementType,
  'pInsertionPoint', pInsertionPoint
  );

IF(nRet <> 0);
    sMessage = 'the process incurred at least 1 major error and consequently aborted. Please see above lines in this file for more details.';
    nProcessReturnCode = 0;
    LogOutput( 'ERROR', Expand( cMsgErrorContent ) );
    sProcessReturnCode = Expand( '%sProcessReturnCode% Process:%cThisProcName% aborted. Check tm1server.log for details.' );
    ProcessError;
EndIf;

### End Prolog ###
573,4

#****Begin: Generated Statements***
#****End: Generated Statements****

574,4

#****Begin: Generated Statements***
#****End: Generated Statements****

575,9

#****Begin: Generated Statements***
#****End: Generated Statements****

################################################################################################# 
##~~Join the bedrock TM1 community on GitHub https://github.com/cubewise-code/bedrock Ver 4.0~~##
################################################################################################# 

### End Epilog ###
576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,1
900,
901,
902,
938,0
937,
936,
935,
934,
932,0
933,0
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,1
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""
