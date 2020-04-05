<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3ba2fbe6-e73c-406e-a298-e21540e00ffa(translator.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="33179490-6db2-4c80-bd28-66b0152ec77c" name="SemanticLanguage" version="0" />
  </languages>
  <imports>
    <import index="ko6g" ref="642f71f8-327a-425b-84f9-44ad58786d27/f:project#33179490-6db2-4c80-bd28-66b0152ec77c(jetbrains.mps.lang.project.modules/module.SemanticLanguage@project_stub)" />
    <import index="e1ma" ref="r:3cfcb3c0-f216-4f17-adfa-3e48ad05ee2d(SemanticLanguage.editor)" />
    <import index="794g" ref="r:cc8ef347-dceb-4c65-8ee1-ebcf7613ab1d(SemanticLanguage.typesystem)" />
    <import index="1806" ref="r:071f3c83-7d0b-4cd3-88d6-cd48a0bdabde(SemanticLanguage.behavior)" />
    <import index="9m6y" ref="r:dbf5ba2f-6e7f-4f71-a349-73993822aa5d(SemanticLanguage.structure)" />
    <import index="w1uf" ref="r:357467d4-4a26-44dd-8c76-527ba66d7525(SemanticLanguage.constraints)" />
    <import index="229m" ref="r:7205de64-1d86-45e7-a27f-4f96dba862ef(SemanticLanguage.intentions)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="1213273179528" name="description" index="1WHSii" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="2DaZZR" id="7cwOujT_t2U" />
  <node concept="sE7Ow" id="7cwOujT_tlx">
    <property role="TrG5h" value="Translate" />
    <property role="2uzpH1" value="Translate" />
    <property role="1WHSii" value="Translating into d0sl" />
    <node concept="tnohg" id="7cwOujT_tly" role="tncku">
      <node concept="3clFbS" id="7cwOujT_tlz" role="2VODD2">
        <node concept="3cpWs8" id="7cwOujTDCDU" role="3cqZAp">
          <node concept="3cpWsn" id="7cwOujTDCDX" role="3cpWs9">
            <property role="TrG5h" value="predicate" />
            <node concept="3Tqbb2" id="7cwOujTDCDS" role="1tU5fm">
              <ref role="ehGHo" to="9m6y:1NaDAfMDNgZ" resolve="PredicateDef" />
            </node>
            <node concept="2ShNRf" id="7cwOujTDV2b" role="33vP2m">
              <node concept="3zrR0B" id="7cwOujTDGm2" role="2ShVmc">
                <node concept="3Tqbb2" id="7cwOujTDGm3" role="3zrR0E">
                  <ref role="ehGHo" to="9m6y:1NaDAfMDNgZ" resolve="PredicateDef" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7cwOujTCsvz" role="3cqZAp">
          <node concept="37vLTI" id="7cwOujTCw2p" role="3clFbG">
            <node concept="Xl_RD" id="7cwOujTCwe2" role="37vLTx">
              <property role="Xl_RC" value="TestPredicate" />
            </node>
            <node concept="2OqwBi" id="7cwOujTCsBy" role="37vLTJ">
              <node concept="37vLTw" id="7cwOujTE0Uv" role="2Oq$k0">
                <ref role="3cqZAo" node="7cwOujTDCDX" resolve="predicate" />
              </node>
              <node concept="3TrcHB" id="7cwOujTCtU_" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7cwOujTCNvQ" role="3cqZAp">
          <node concept="37vLTI" id="7cwOujTCPj5" role="3clFbG">
            <node concept="2ShNRf" id="7cwOujTCV0F" role="37vLTx">
              <node concept="3zrR0B" id="7cwOujTCPtb" role="2ShVmc">
                <node concept="3Tqbb2" id="7cwOujTCPtc" role="3zrR0E">
                  <ref role="ehGHo" to="9m6y:6G1rrAAO$jd" resolve="LogicalCommand" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7cwOujTCNJ8" role="37vLTJ">
              <node concept="37vLTw" id="7cwOujTE7Ot" role="2Oq$k0">
                <ref role="3cqZAo" node="7cwOujTDCDX" resolve="predicate" />
              </node>
              <node concept="3TrEf2" id="7cwOujTCOGS" role="2OqNvi">
                <ref role="3Tt5mk" to="9m6y:1NaDAfMDNhu" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7cwOujTEwNn" role="3cqZAp">
          <node concept="2OqwBi" id="7cwOujTECdq" role="3clFbG">
            <node concept="2OqwBi" id="7cwOujTE$lO" role="2Oq$k0">
              <node concept="2OqwBi" id="7cwOujTEz2Z" role="2Oq$k0">
                <node concept="2OqwBi" id="7cwOujTExng" role="2Oq$k0">
                  <node concept="2WthIp" id="7cwOujTEwNl" role="2Oq$k0" />
                  <node concept="3gHZIF" id="7cwOujTEyFs" role="2OqNvi">
                    <ref role="2WH_rO" node="7cwOujTDu2A" resolve="node" />
                  </node>
                </node>
                <node concept="3TrEf2" id="7cwOujTEzXE" role="2OqNvi">
                  <ref role="3Tt5mk" to="9m6y:3k8K6pfKxCj" resolve="body" />
                </node>
              </node>
              <node concept="3Tsc0h" id="7cwOujTE_kz" role="2OqNvi">
                <ref role="3TtcxE" to="9m6y:1NaDAfMCtE7" resolve="commands" />
              </node>
            </node>
            <node concept="TSZUe" id="7cwOujTEHEX" role="2OqNvi">
              <node concept="37vLTw" id="7cwOujTF04t" role="25WWJ7">
                <ref role="3cqZAo" node="7cwOujTDCDX" resolve="predicate" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1X3_iC" id="7cwOujTA7gq" role="lGtFl">
      <property role="3V$3am" value="updateBlock" />
      <property role="3V$3ak" value="28f9e497-3b42-4291-aeba-0a1039153ab1/1203071646776/1203083196627" />
      <node concept="2ScWuX" id="7cwOujT_y2r" role="8Wnug">
        <node concept="3clFbS" id="7cwOujT_y2s" role="2VODD2">
          <node concept="3cpWs6" id="7cwOujT_yhT" role="3cqZAp">
            <node concept="3clFbT" id="7cwOujT_yxD" role="3cqZAk">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="7cwOujTA43V" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="7cwOujTA43W" role="1B3o_S" />
      <node concept="1oajcY" id="7cwOujTA43X" role="1oa70y" />
      <node concept="H_c77" id="7cwOujTA3Ir" role="1tU5fm" />
    </node>
    <node concept="2S4$dB" id="7cwOujTDu2A" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="7cwOujTDu2B" role="1B3o_S" />
      <node concept="1oajcY" id="7cwOujTDu2C" role="1oa70y" />
      <node concept="3Tqbb2" id="7cwOujTDtCV" role="1tU5fm">
        <ref role="ehGHo" to="9m6y:2cQsOMhem3E" resolve="SemanticModel" />
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7cwOujTA8Dk">
    <property role="TrG5h" value="Generator" />
    <node concept="ftmFs" id="7cwOujTA8Oq" role="ftER_">
      <node concept="tCFHf" id="7cwOujTA9hS" role="ftvYc">
        <ref role="tCJdB" node="7cwOujT_tlx" resolve="Translate" />
      </node>
    </node>
    <node concept="tT9cl" id="7cwOujTA9tE" role="2f5YQi">
      <ref role="tU$_T" to="tprs:6A_mxR_NmaE" resolve="IDEATouchBarDefault" />
    </node>
    <node concept="tT9cl" id="7cwOujTA9MA" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4LYI" resolve="Tools" />
    </node>
  </node>
</model>

