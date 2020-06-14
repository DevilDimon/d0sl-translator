<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3ba2fbe6-e73c-406e-a298-e21540e00ffa(translator.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
  </languages>
  <imports>
    <import index="e1ma" ref="r:3cfcb3c0-f216-4f17-adfa-3e48ad05ee2d(SemanticLanguage.editor)" />
    <import index="794g" ref="r:cc8ef347-dceb-4c65-8ee1-ebcf7613ab1d(SemanticLanguage.typesystem)" />
    <import index="1806" ref="r:071f3c83-7d0b-4cd3-88d6-cd48a0bdabde(SemanticLanguage.behavior)" />
    <import index="9m6y" ref="r:dbf5ba2f-6e7f-4f71-a349-73993822aa5d(SemanticLanguage.structure)" />
    <import index="w1uf" ref="r:357467d4-4a26-44dd-8c76-527ba66d7525(SemanticLanguage.constraints)" />
    <import index="229m" ref="r:7205de64-1d86-45e7-a27f-4f96dba862ef(SemanticLanguage.intentions)" />
    <import index="t6dh" ref="64231280-9983-4b7f-9b53-d14d5e29caff/java:org.apache.jena.rdf.model(jena/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
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
      <concept id="6973815483243445083" name="jetbrains.mps.lang.smodel.structure.EnumMemberValueRefExpression" flags="nn" index="3f7Wdw">
        <reference id="6973815483243565416" name="member" index="3f7u_j" />
        <reference id="6973815483243564601" name="enum" index="3f7vo2" />
      </concept>
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
        <node concept="3cpWs8" id="7129pHorWWi" role="3cqZAp">
          <node concept="3cpWsn" id="7129pHorWWh" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="7129pHoCo_l" role="1tU5fm">
              <ref role="3uigEE" to="t6dh:~Model" resolve="Model" />
            </node>
            <node concept="2YIFZM" id="7129pHorXeN" role="33vP2m">
              <ref role="1Pybhc" to="t6dh:~ModelFactory" resolve="ModelFactory" />
              <ref role="37wK5l" to="t6dh:~ModelFactory.createDefaultModel()" resolve="createDefaultModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2guIvpdxS$O" role="3cqZAp">
          <node concept="2OqwBi" id="2guIvpdxT7r" role="3clFbG">
            <node concept="37vLTw" id="2guIvpdxS$M" role="2Oq$k0">
              <ref role="3cqZAo" node="7129pHorWWh" resolve="model" />
            </node>
            <node concept="liA8E" id="2guIvpdxZvJ" role="2OqNvi">
              <ref role="37wK5l" to="t6dh:~Model.read(java.lang.String,java.lang.String)" resolve="read" />
              <node concept="Xl_RD" id="2guIvpdxZxe" role="37wK5m">
                <property role="Xl_RC" value="/Users/d.serov/Sources/thesis-code/out.xml" />
              </node>
              <node concept="Xl_RD" id="2guIvpdxZC1" role="37wK5m">
                <property role="Xl_RC" value="RDF/XML" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7129pHov3bY" role="3cqZAp">
          <node concept="2OqwBi" id="7129pHov3wL" role="3clFbw">
            <node concept="37vLTw" id="7129pHov3wK" role="2Oq$k0">
              <ref role="3cqZAo" node="7129pHorWWh" resolve="model" />
            </node>
            <node concept="liA8E" id="2guIvpdy4KU" role="2OqNvi">
              <ref role="37wK5l" to="t6dh:~Model.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3clFbS" id="7129pHov3c1" role="3clFbx">
            <node concept="3cpWs6" id="6VW9HMupQy3" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbH" id="6VW9HMuqc9b" role="3cqZAp" />
        <node concept="3cpWs8" id="6VW9HMupXCP" role="3cqZAp">
          <node concept="3cpWsn" id="6VW9HMupXCO" role="3cpWs9">
            <property role="TrG5h" value="iter" />
            <node concept="3uibUv" id="6VW9HMupXCQ" role="1tU5fm">
              <ref role="3uigEE" to="t6dh:~StmtIterator" resolve="StmtIterator" />
            </node>
            <node concept="2OqwBi" id="6VW9HMupYjp" role="33vP2m">
              <node concept="37vLTw" id="6VW9HMupYjo" role="2Oq$k0">
                <ref role="3cqZAo" node="7129pHorWWh" resolve="model" />
              </node>
              <node concept="liA8E" id="6VW9HMupYjq" role="2OqNvi">
                <ref role="37wK5l" to="t6dh:~Model.listStatements()" resolve="listStatements" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6VW9HMupXCT" role="3cqZAp">
          <node concept="3cpWsn" id="6VW9HMupXCS" role="3cpWs9">
            <property role="TrG5h" value="actionName" />
            <node concept="17QB3L" id="6VW9HMuqdXv" role="1tU5fm" />
            <node concept="10Nm6u" id="6VW9HMupXCV" role="33vP2m" />
          </node>
        </node>
        <node concept="2$JKZl" id="6VW9HMupXD$" role="3cqZAp">
          <node concept="2OqwBi" id="6VW9HMupZgR" role="2$JKZa">
            <node concept="37vLTw" id="6VW9HMupZgQ" role="2Oq$k0">
              <ref role="3cqZAo" node="6VW9HMupXCO" resolve="iter" />
            </node>
            <node concept="liA8E" id="6VW9HMupZgS" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Iterator.hasNext()" resolve="hasNext" />
            </node>
          </node>
          <node concept="3clFbS" id="6VW9HMupXCY" role="2LFqv$">
            <node concept="3cpWs8" id="6VW9HMupXD0" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMupXCZ" role="3cpWs9">
                <property role="TrG5h" value="stmt" />
                <node concept="3uibUv" id="6VW9HMupXD1" role="1tU5fm">
                  <ref role="3uigEE" to="t6dh:~Statement" resolve="Statement" />
                </node>
                <node concept="2OqwBi" id="6VW9HMupYjA" role="33vP2m">
                  <node concept="37vLTw" id="6VW9HMupYj_" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMupXCO" resolve="iter" />
                  </node>
                  <node concept="liA8E" id="6VW9HMupYjB" role="2OqNvi">
                    <ref role="37wK5l" to="t6dh:~StmtIterator.nextStatement()" resolve="nextStatement" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6VW9HMupXD4" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMupXD3" role="3cpWs9">
                <property role="TrG5h" value="predicateName" />
                <node concept="17QB3L" id="6VW9HMuqepd" role="1tU5fm" />
                <node concept="2OqwBi" id="6VW9HMupXD6" role="33vP2m">
                  <node concept="2OqwBi" id="6VW9HMupXD7" role="2Oq$k0">
                    <node concept="2OqwBi" id="6VW9HMupYMG" role="2Oq$k0">
                      <node concept="37vLTw" id="6VW9HMupYMF" role="2Oq$k0">
                        <ref role="3cqZAo" node="6VW9HMupXCZ" resolve="stmt" />
                      </node>
                      <node concept="liA8E" id="6VW9HMupYMH" role="2OqNvi">
                        <ref role="37wK5l" to="t6dh:~Statement.getPredicate()" resolve="getPredicate" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6VW9HMupXD9" role="2OqNvi">
                      <ref role="37wK5l" to="t6dh:~Resource.toString()" resolve="toString" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6VW9HMupXDa" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                    <node concept="Xl_RD" id="6VW9HMupXDb" role="37wK5m">
                      <property role="Xl_RC" value="|" />
                    </node>
                    <node concept="Xl_RD" id="6VW9HMupXDc" role="37wK5m">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6VW9HMupXDe" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMupXDd" role="3cpWs9">
                <property role="TrG5h" value="argument" />
                <node concept="17QB3L" id="6VW9HMuqeFP" role="1tU5fm" />
                <node concept="2OqwBi" id="6VW9HMupXDg" role="33vP2m">
                  <node concept="2OqwBi" id="6VW9HMupYor" role="2Oq$k0">
                    <node concept="37vLTw" id="6VW9HMupYoq" role="2Oq$k0">
                      <ref role="3cqZAo" node="6VW9HMupXCZ" resolve="stmt" />
                    </node>
                    <node concept="liA8E" id="6VW9HMupYos" role="2OqNvi">
                      <ref role="37wK5l" to="t6dh:~Statement.getObject()" resolve="getObject" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6VW9HMupXDi" role="2OqNvi">
                    <ref role="37wK5l" to="t6dh:~RDFNode.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6VW9HMupXDj" role="3cqZAp">
              <node concept="2OqwBi" id="6VW9HMupY$_" role="3clFbw">
                <node concept="37vLTw" id="6VW9HMupY$$" role="2Oq$k0">
                  <ref role="3cqZAo" node="6VW9HMupXD3" resolve="predicateName" />
                </node>
                <node concept="liA8E" id="6VW9HMupY$A" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="Xl_RD" id="6VW9HMupY$B" role="37wK5m">
                    <property role="Xl_RC" value="что_делает" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6VW9HMupXDn" role="3clFbx">
                <node concept="3cpWs8" id="6VW9HMupXDp" role="3cqZAp">
                  <node concept="3cpWsn" id="6VW9HMupXDo" role="3cpWs9">
                    <property role="TrG5h" value="lastUnderscoreIndex" />
                    <node concept="10Oyi0" id="6VW9HMupXDq" role="1tU5fm" />
                    <node concept="2OqwBi" id="6VW9HMupYqU" role="33vP2m">
                      <node concept="37vLTw" id="6VW9HMupYqT" role="2Oq$k0">
                        <ref role="3cqZAo" node="6VW9HMupXDd" resolve="argument" />
                      </node>
                      <node concept="liA8E" id="6VW9HMupYqV" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.lastIndexOf(java.lang.String)" resolve="lastIndexOf" />
                        <node concept="Xl_RD" id="6VW9HMupYqW" role="37wK5m">
                          <property role="Xl_RC" value="_" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6VW9HMupXDt" role="3cqZAp">
                  <node concept="37vLTI" id="6VW9HMupXDu" role="3clFbG">
                    <node concept="37vLTw" id="6VW9HMupXDv" role="37vLTJ">
                      <ref role="3cqZAo" node="6VW9HMupXCS" resolve="actionName" />
                    </node>
                    <node concept="2OqwBi" id="6VW9HMupZ8G" role="37vLTx">
                      <node concept="37vLTw" id="6VW9HMupZ8F" role="2Oq$k0">
                        <ref role="3cqZAo" node="6VW9HMupXDd" resolve="argument" />
                      </node>
                      <node concept="liA8E" id="6VW9HMupZ8H" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                        <node concept="3cmrfG" id="6VW9HMupZ8I" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="6VW9HMupZ8J" role="37wK5m">
                          <ref role="3cqZAo" node="6VW9HMupXDo" resolve="lastUnderscoreIndex" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="6VW9HMupXDz" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6VW9HMuqf6R" role="3cqZAp" />
        <node concept="3clFbF" id="6VW9HMupXD_" role="3cqZAp">
          <node concept="37vLTI" id="6VW9HMupXDA" role="3clFbG">
            <node concept="37vLTw" id="6VW9HMupXDB" role="37vLTJ">
              <ref role="3cqZAo" node="6VW9HMupXCO" resolve="iter" />
            </node>
            <node concept="2OqwBi" id="6VW9HMupZ8v" role="37vLTx">
              <node concept="37vLTw" id="6VW9HMupZ8u" role="2Oq$k0">
                <ref role="3cqZAo" node="7129pHorWWh" resolve="model" />
              </node>
              <node concept="liA8E" id="6VW9HMupZ8w" role="2OqNvi">
                <ref role="37wK5l" to="t6dh:~Model.listStatements()" resolve="listStatements" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="6VW9HMupXEz" role="3cqZAp">
          <node concept="2OqwBi" id="6VW9HMupZHi" role="2$JKZa">
            <node concept="37vLTw" id="6VW9HMupZHh" role="2Oq$k0">
              <ref role="3cqZAo" node="6VW9HMupXCO" resolve="iter" />
            </node>
            <node concept="liA8E" id="6VW9HMupZHj" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Iterator.hasNext()" resolve="hasNext" />
            </node>
          </node>
          <node concept="3clFbS" id="6VW9HMupXDF" role="2LFqv$">
            <node concept="3cpWs8" id="6VW9HMupXDH" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMupXDG" role="3cpWs9">
                <property role="TrG5h" value="stmt" />
                <node concept="3uibUv" id="6VW9HMupXDI" role="1tU5fm">
                  <ref role="3uigEE" to="t6dh:~Statement" resolve="Statement" />
                </node>
                <node concept="2OqwBi" id="6VW9HMupYvq" role="33vP2m">
                  <node concept="37vLTw" id="6VW9HMupYvp" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMupXCO" resolve="iter" />
                  </node>
                  <node concept="liA8E" id="6VW9HMupYvr" role="2OqNvi">
                    <ref role="37wK5l" to="t6dh:~StmtIterator.nextStatement()" resolve="nextStatement" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6VW9HMupXDL" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMupXDK" role="3cpWs9">
                <property role="TrG5h" value="subject" />
                <node concept="3uibUv" id="6VW9HMupXDM" role="1tU5fm">
                  <ref role="3uigEE" to="t6dh:~Resource" resolve="Resource" />
                </node>
                <node concept="2OqwBi" id="6VW9HMupZ_z" role="33vP2m">
                  <node concept="37vLTw" id="6VW9HMupZ_y" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMupXDG" resolve="stmt" />
                  </node>
                  <node concept="liA8E" id="6VW9HMupZ_$" role="2OqNvi">
                    <ref role="37wK5l" to="t6dh:~Statement.getSubject()" resolve="getSubject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6VW9HMupXDP" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMupXDO" role="3cpWs9">
                <property role="TrG5h" value="predicate" />
                <node concept="3uibUv" id="6VW9HMupXDQ" role="1tU5fm">
                  <ref role="3uigEE" to="t6dh:~Property" resolve="Property" />
                </node>
                <node concept="2OqwBi" id="6VW9HMupZ9K" role="33vP2m">
                  <node concept="37vLTw" id="6VW9HMupZ9J" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMupXDG" resolve="stmt" />
                  </node>
                  <node concept="liA8E" id="6VW9HMupZ9L" role="2OqNvi">
                    <ref role="37wK5l" to="t6dh:~Statement.getPredicate()" resolve="getPredicate" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6VW9HMupXDT" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMupXDS" role="3cpWs9">
                <property role="TrG5h" value="object" />
                <node concept="3uibUv" id="6VW9HMupXDU" role="1tU5fm">
                  <ref role="3uigEE" to="t6dh:~RDFNode" resolve="RDFNode" />
                </node>
                <node concept="2OqwBi" id="6VW9HMupYFe" role="33vP2m">
                  <node concept="37vLTw" id="6VW9HMupYFd" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMupXDG" resolve="stmt" />
                  </node>
                  <node concept="liA8E" id="6VW9HMupYFf" role="2OqNvi">
                    <ref role="37wK5l" to="t6dh:~Statement.getObject()" resolve="getObject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6VW9HMupXDX" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMupXDW" role="3cpWs9">
                <property role="TrG5h" value="situation" />
                <node concept="17QB3L" id="6VW9HMuqg3Z" role="1tU5fm" />
                <node concept="2OqwBi" id="6VW9HMupYlQ" role="33vP2m">
                  <node concept="37vLTw" id="6VW9HMupYlP" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMupXDK" resolve="subject" />
                  </node>
                  <node concept="liA8E" id="6VW9HMupYlR" role="2OqNvi">
                    <ref role="37wK5l" to="t6dh:~Resource.getLocalName()" resolve="getLocalName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6VW9HMupXE1" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMupXE0" role="3cpWs9">
                <property role="TrG5h" value="predicateName" />
                <node concept="17QB3L" id="6VW9HMuqgmZ" role="1tU5fm" />
                <node concept="2OqwBi" id="6VW9HMupXE3" role="33vP2m">
                  <node concept="2OqwBi" id="6VW9HMupYI5" role="2Oq$k0">
                    <node concept="37vLTw" id="6VW9HMupYI4" role="2Oq$k0">
                      <ref role="3cqZAo" node="6VW9HMupXDO" resolve="predicate" />
                    </node>
                    <node concept="liA8E" id="6VW9HMupYI6" role="2OqNvi">
                      <ref role="37wK5l" to="t6dh:~Resource.toString()" resolve="toString" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6VW9HMupXE5" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                    <node concept="Xl_RD" id="6VW9HMupXE6" role="37wK5m">
                      <property role="Xl_RC" value="|" />
                    </node>
                    <node concept="Xl_RD" id="6VW9HMupXE7" role="37wK5m">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6VW9HMupXE9" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMupXE8" role="3cpWs9">
                <property role="TrG5h" value="argument" />
                <node concept="17QB3L" id="6VW9HMuqgXm" role="1tU5fm" />
                <node concept="2OqwBi" id="6VW9HMupYyY" role="33vP2m">
                  <node concept="37vLTw" id="6VW9HMupYyX" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMupXDS" resolve="object" />
                  </node>
                  <node concept="liA8E" id="6VW9HMupYyZ" role="2OqNvi">
                    <ref role="37wK5l" to="t6dh:~RDFNode.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2a4_gVdzvyO" role="3cqZAp" />
            <node concept="3SKdUt" id="2a4_gVdzOtD" role="3cqZAp">
              <node concept="3SKdUq" id="2a4_gVdzOtF" role="3SKWNk">
                <property role="3SKdUp" value="Пропускает неполные предикаты" />
              </node>
            </node>
            <node concept="3clFbJ" id="2a4_gVdzzf4" role="3cqZAp">
              <node concept="3clFbS" id="2a4_gVdzzf6" role="3clFbx">
                <node concept="3N13vt" id="2a4_gVdzN7K" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="2a4_gVdz$pD" role="3clFbw">
                <node concept="37vLTw" id="2a4_gVdz$7P" role="2Oq$k0">
                  <ref role="3cqZAo" node="6VW9HMupXE8" resolve="argument" />
                </node>
                <node concept="liA8E" id="2a4_gVdzCT$" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                  <node concept="Xl_RD" id="2a4_gVdzCWK" role="37wK5m">
                    <property role="Xl_RC" value="_obj" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6VW9HMuqhdY" role="3cqZAp" />
            <node concept="3clFbJ" id="6VW9HMupXEc" role="3cqZAp">
              <node concept="2OqwBi" id="6VW9HMupYmL" role="3clFbw">
                <node concept="37vLTw" id="6VW9HMupYmK" role="2Oq$k0">
                  <ref role="3cqZAo" node="6VW9HMupXE0" resolve="predicateName" />
                </node>
                <node concept="liA8E" id="6VW9HMupYmM" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="Xl_RD" id="6VW9HMupYmN" role="37wK5m">
                    <property role="Xl_RC" value="что_делает" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6VW9HMupXEg" role="3clFbx">
                <node concept="3clFbF" id="6VW9HMupXEh" role="3cqZAp">
                  <node concept="37vLTI" id="6VW9HMupXEi" role="3clFbG">
                    <node concept="37vLTw" id="6VW9HMupXEj" role="37vLTJ">
                      <ref role="3cqZAo" node="6VW9HMupXE8" resolve="argument" />
                    </node>
                    <node concept="37vLTw" id="6VW9HMupXEk" role="37vLTx">
                      <ref role="3cqZAo" node="6VW9HMupXCS" resolve="actionName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6VW9HMuqhwF" role="3cqZAp" />
            <node concept="3clFbJ" id="6VW9HMupXEl" role="3cqZAp">
              <node concept="2OqwBi" id="6VW9HMupXEm" role="3clFbw">
                <node concept="1eOMI4" id="6VW9HMupXEs" role="2Oq$k0">
                  <node concept="3cpWs3" id="6VW9HMupXEn" role="1eOMHV">
                    <node concept="3cpWs3" id="6VW9HMupXEo" role="3uHU7B">
                      <node concept="37vLTw" id="6VW9HMupXEp" role="3uHU7B">
                        <ref role="3cqZAo" node="6VW9HMupXE0" resolve="predicateName" />
                      </node>
                      <node concept="Xl_RD" id="6VW9HMupXEq" role="3uHU7w">
                        <property role="Xl_RC" value="_" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6VW9HMupXEr" role="3uHU7w">
                      <ref role="3cqZAo" node="6VW9HMupXCS" resolve="actionName" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6VW9HMupXEt" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="6VW9HMupXEu" role="37wK5m">
                    <ref role="3cqZAo" node="6VW9HMupXE8" resolve="argument" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6VW9HMupXEw" role="3clFbx">
                <node concept="3N13vt" id="6VW9HMupXEx" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbH" id="6VW9HMuqw3s" role="3cqZAp" />
            <node concept="3cpWs8" id="7cwOujTDCDU" role="3cqZAp">
              <node concept="3cpWsn" id="7cwOujTDCDX" role="3cpWs9">
                <property role="TrG5h" value="predicateNode" />
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
                <node concept="2OqwBi" id="7cwOujTCsBy" role="37vLTJ">
                  <node concept="37vLTw" id="7cwOujTE0Uv" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTDCDX" resolve="predicateNode" />
                  </node>
                  <node concept="3TrcHB" id="7cwOujTCtU_" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="37vLTw" id="6VW9HMur777" role="37vLTx">
                  <ref role="3cqZAo" node="6VW9HMupXE0" resolve="predicateName" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6VW9HMur8nb" role="3cqZAp" />
            <node concept="3cpWs8" id="6VW9HMurnWO" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMurnWR" role="3cpWs9">
                <property role="TrG5h" value="situationDeclaration" />
                <node concept="3Tqbb2" id="6VW9HMurnWM" role="1tU5fm">
                  <ref role="ehGHo" to="9m6y:4prIPW_3qiQ" resolve="ArgumentDeclaration" />
                </node>
                <node concept="2ShNRf" id="6VW9HMurEDj" role="33vP2m">
                  <node concept="3zrR0B" id="6VW9HMuroEu" role="2ShVmc">
                    <node concept="3Tqbb2" id="6VW9HMuroEv" role="3zrR0E">
                      <ref role="ehGHo" to="9m6y:4prIPW_3qiQ" resolve="ArgumentDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6VW9HMurR6b" role="3cqZAp">
              <node concept="37vLTI" id="6VW9HMurW0B" role="3clFbG">
                <node concept="Xl_RD" id="6VW9HMurW8K" role="37vLTx">
                  <property role="Xl_RC" value="situation" />
                </node>
                <node concept="2OqwBi" id="6VW9HMurRKX" role="37vLTJ">
                  <node concept="37vLTw" id="6VW9HMurR69" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMurnWR" resolve="situationDeclaration" />
                  </node>
                  <node concept="3TrcHB" id="6VW9HMurVku" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6VW9HMus6QY" role="3cqZAp">
              <node concept="37vLTI" id="6VW9HMus9Rv" role="3clFbG">
                <node concept="2ShNRf" id="6VW9HMussh9" role="37vLTx">
                  <node concept="3zrR0B" id="6VW9HMusa25" role="2ShVmc">
                    <node concept="3Tqbb2" id="6VW9HMusa26" role="3zrR0E">
                      <ref role="ehGHo" to="9m6y:1N6$leSdkle" resolve="StringType" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6VW9HMus7vM" role="37vLTJ">
                  <node concept="37vLTw" id="6VW9HMus6QW" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMurnWR" resolve="situationDeclaration" />
                  </node>
                  <node concept="3TrEf2" id="6VW9HMus8ZY" role="2OqNvi">
                    <ref role="3Tt5mk" to="9m6y:4prIPW_3qqe" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6VW9HMut4A9" role="3cqZAp">
              <node concept="2OqwBi" id="6VW9HMut8Kt" role="3clFbG">
                <node concept="2OqwBi" id="6VW9HMut5hF" role="2Oq$k0">
                  <node concept="37vLTw" id="6VW9HMut4A7" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTDCDX" resolve="predicateNode" />
                  </node>
                  <node concept="3Tsc0h" id="6VW9HMut749" role="2OqNvi">
                    <ref role="3TtcxE" to="9m6y:4prIPW_3GZN" resolve="args" />
                  </node>
                </node>
                <node concept="TSZUe" id="6VW9HMutj5V" role="2OqNvi">
                  <node concept="37vLTw" id="6VW9HMutAsb" role="25WWJ7">
                    <ref role="3cqZAo" node="6VW9HMurnWR" resolve="situationDeclaration" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6VW9HMur9yy" role="3cqZAp" />
            <node concept="3cpWs8" id="7cwOujTFqaF" role="3cqZAp">
              <node concept="3cpWsn" id="7cwOujTFqaI" role="3cpWs9">
                <property role="TrG5h" value="argDeclaration" />
                <node concept="3Tqbb2" id="7cwOujTFqaD" role="1tU5fm">
                  <ref role="ehGHo" to="9m6y:4prIPW_3qiQ" resolve="ArgumentDeclaration" />
                </node>
                <node concept="2ShNRf" id="7cwOujTFDJD" role="33vP2m">
                  <node concept="3zrR0B" id="7cwOujTFqUa" role="2ShVmc">
                    <node concept="3Tqbb2" id="7cwOujTFqUb" role="3zrR0E">
                      <ref role="ehGHo" to="9m6y:4prIPW_3qiQ" resolve="ArgumentDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7cwOujTFMwr" role="3cqZAp">
              <node concept="37vLTI" id="7cwOujTFPpd" role="3clFbG">
                <node concept="Xl_RD" id="7cwOujTFPs6" role="37vLTx">
                  <property role="Xl_RC" value="arg" />
                </node>
                <node concept="2OqwBi" id="7cwOujTFNfO" role="37vLTJ">
                  <node concept="37vLTw" id="7cwOujTFMwp" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTFqaI" resolve="argDeclaration" />
                  </node>
                  <node concept="3TrcHB" id="7cwOujTFOai" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7cwOujTFWQP" role="3cqZAp">
              <node concept="37vLTI" id="7cwOujTFZrk" role="3clFbG">
                <node concept="2ShNRf" id="7cwOujTGID5" role="37vLTx">
                  <node concept="3zrR0B" id="7cwOujTFZF2" role="2ShVmc">
                    <node concept="3Tqbb2" id="7cwOujTFZF3" role="3zrR0E">
                      <ref role="ehGHo" to="9m6y:1N6$leSdkle" resolve="StringType" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7cwOujTFXD6" role="37vLTJ">
                  <node concept="37vLTw" id="7cwOujTFWQN" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTFqaI" resolve="argDeclaration" />
                  </node>
                  <node concept="3TrEf2" id="7cwOujTFYT4" role="2OqNvi">
                    <ref role="3Tt5mk" to="9m6y:4prIPW_3qqe" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7cwOujTF6Gq" role="3cqZAp">
              <node concept="2OqwBi" id="7cwOujTF9Nm" role="3clFbG">
                <node concept="2OqwBi" id="7cwOujTF75M" role="2Oq$k0">
                  <node concept="37vLTw" id="7cwOujTF6Go" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTDCDX" resolve="predicateNode" />
                  </node>
                  <node concept="3Tsc0h" id="7cwOujTF7YE" role="2OqNvi">
                    <ref role="3TtcxE" to="9m6y:4prIPW_3GZN" resolve="args" />
                  </node>
                </node>
                <node concept="TSZUe" id="7cwOujTGNny" role="2OqNvi">
                  <node concept="37vLTw" id="7cwOujTH3$U" role="25WWJ7">
                    <ref role="3cqZAo" node="7cwOujTFqaI" resolve="argDeclaration" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6VW9HMur8Uf" role="3cqZAp" />
            <node concept="3cpWs8" id="7cwOujTHeHG" role="3cqZAp">
              <node concept="3cpWsn" id="7cwOujTHeHJ" role="3cpWs9">
                <property role="TrG5h" value="checkAll" />
                <node concept="3Tqbb2" id="7cwOujTHeHE" role="1tU5fm">
                  <ref role="ehGHo" to="9m6y:6G1rrAAO$Im" resolve="CheckAll" />
                </node>
                <node concept="2ShNRf" id="7cwOujTHuxs" role="33vP2m">
                  <node concept="3zrR0B" id="7cwOujTHfs5" role="2ShVmc">
                    <node concept="3Tqbb2" id="7cwOujTHfs6" role="3zrR0E">
                      <ref role="ehGHo" to="9m6y:6G1rrAAO$Im" resolve="CheckAll" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6VW9HMutPD_" role="3cqZAp">
              <node concept="2OqwBi" id="6VW9HMutTAN" role="3clFbG">
                <node concept="2OqwBi" id="6VW9HMutQjC" role="2Oq$k0">
                  <node concept="37vLTw" id="6VW9HMutPDz" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTHeHJ" resolve="checkAll" />
                  </node>
                  <node concept="3Tsc0h" id="6VW9HMutSxb" role="2OqNvi">
                    <ref role="3TtcxE" to="9m6y:6G1rrAAO$In" resolve="commands" />
                  </node>
                </node>
                <node concept="liA8E" id="6VW9HMuurih" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.clear()" resolve="clear" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6VW9HMuurpD" role="3cqZAp" />
            <node concept="1X3_iC" id="6VW9HMuus2R" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3cpWs8" id="7cwOujTHDGY" role="8Wnug">
                <node concept="3cpWsn" id="7cwOujTHDH1" role="3cpWs9">
                  <property role="TrG5h" value="trueConstant" />
                  <node concept="3Tqbb2" id="7cwOujTHDGW" role="1tU5fm">
                    <ref role="ehGHo" to="9m6y:4prIPW_0Tya" resolve="LogicalConstant" />
                  </node>
                  <node concept="2ShNRf" id="7cwOujTHTMS" role="33vP2m">
                    <node concept="3zrR0B" id="7cwOujTHEiz" role="2ShVmc">
                      <node concept="3Tqbb2" id="7cwOujTHEi$" role="3zrR0E">
                        <ref role="ehGHo" to="9m6y:4prIPW_0Tya" resolve="LogicalConstant" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="6VW9HMuusYu" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="7cwOujTI46c" role="8Wnug">
                <node concept="37vLTI" id="7cwOujTI6gq" role="3clFbG">
                  <node concept="3f7Wdw" id="7cwOujTIYq_" role="37vLTx">
                    <ref role="3f7vo2" to="9m6y:4prIPW_0Txx" resolve="LogicalData" />
                    <ref role="3f7u_j" to="9m6y:4prIPW_0Txy" />
                  </node>
                  <node concept="2OqwBi" id="7cwOujTI4IX" role="37vLTJ">
                    <node concept="37vLTw" id="7cwOujTI46a" role="2Oq$k0">
                      <ref role="3cqZAo" node="7cwOujTHDH1" resolve="trueConstant" />
                    </node>
                    <node concept="3TrcHB" id="7cwOujTI5GP" role="2OqNvi">
                      <ref role="3TsBF5" to="9m6y:4prIPW_0Tyb" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="6VW9HMuutIh" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="7cwOujTJ9al" role="8Wnug">
                <node concept="2OqwBi" id="7cwOujTJcEV" role="3clFbG">
                  <node concept="2OqwBi" id="7cwOujTJ9IL" role="2Oq$k0">
                    <node concept="37vLTw" id="7cwOujTJ9aj" role="2Oq$k0">
                      <ref role="3cqZAo" node="7cwOujTHeHJ" resolve="checkAll" />
                    </node>
                    <node concept="3Tsc0h" id="7cwOujTJb$R" role="2OqNvi">
                      <ref role="3TtcxE" to="9m6y:6G1rrAAO$In" resolve="commands" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="7cwOujTJgnB" role="2OqNvi">
                    <node concept="37vLTw" id="7cwOujTJBsf" role="25WWJ7">
                      <ref role="3cqZAo" node="7cwOujTHDH1" resolve="trueConstant" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7cwOujTJWev" role="3cqZAp" />
            <node concept="3cpWs8" id="7cwOujTK6A6" role="3cqZAp">
              <node concept="3cpWsn" id="7cwOujTK6A9" role="3cpWs9">
                <property role="TrG5h" value="situationComparison" />
                <node concept="3Tqbb2" id="7cwOujTK6A4" role="1tU5fm">
                  <ref role="ehGHo" to="9m6y:4j0ekou27iA" resolve="ComparisonExpression" />
                </node>
                <node concept="2ShNRf" id="7cwOujTKn74" role="33vP2m">
                  <node concept="3zrR0B" id="7cwOujTK7oj" role="2ShVmc">
                    <node concept="3Tqbb2" id="7cwOujTK7ok" role="3zrR0E">
                      <ref role="ehGHo" to="9m6y:4j0ekou27iA" resolve="ComparisonExpression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7cwOujTKubP" role="3cqZAp">
              <node concept="37vLTI" id="7cwOujTKwsh" role="3clFbG">
                <node concept="Xl_RD" id="7cwOujTKw$f" role="37vLTx">
                  <property role="Xl_RC" value="==" />
                </node>
                <node concept="2OqwBi" id="7cwOujTKuPk" role="37vLTJ">
                  <node concept="37vLTw" id="7cwOujTKubN" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTK6A9" resolve="situationComparison" />
                  </node>
                  <node concept="3TrcHB" id="7cwOujTKvOC" role="2OqNvi">
                    <ref role="3TsBF5" to="9m6y:4j0ekou27iB" resolve="operator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7cwOujTKR4X" role="3cqZAp">
              <node concept="3cpWsn" id="7cwOujTKR50" role="3cpWs9">
                <property role="TrG5h" value="situationReference" />
                <node concept="3Tqbb2" id="7cwOujTKR4V" role="1tU5fm">
                  <ref role="ehGHo" to="9m6y:7J45ATPmrdu" resolve="ArgumentReference" />
                </node>
                <node concept="2ShNRf" id="7cwOujTL7CC" role="33vP2m">
                  <node concept="3zrR0B" id="7cwOujTKRC_" role="2ShVmc">
                    <node concept="3Tqbb2" id="7cwOujTKRCA" role="3zrR0E">
                      <ref role="ehGHo" to="9m6y:7J45ATPmrdu" resolve="ArgumentReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7cwOujTLhZA" role="3cqZAp">
              <node concept="37vLTI" id="7cwOujTLkkk" role="3clFbG">
                <node concept="2OqwBi" id="7cwOujTLiBI" role="37vLTJ">
                  <node concept="37vLTw" id="7cwOujTLhZ$" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTKR50" resolve="situationReference" />
                  </node>
                  <node concept="3TrEf2" id="7cwOujTLjzO" role="2OqNvi">
                    <ref role="3Tt5mk" to="9m6y:7J45ATPmrdv" resolve="declaration" />
                  </node>
                </node>
                <node concept="37vLTw" id="6VW9HMuuLyC" role="37vLTx">
                  <ref role="3cqZAo" node="6VW9HMurnWR" resolve="situationDeclaration" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7cwOujTKEdY" role="3cqZAp">
              <node concept="37vLTI" id="7cwOujTL_eK" role="3clFbG">
                <node concept="37vLTw" id="7cwOujTLIZu" role="37vLTx">
                  <ref role="3cqZAo" node="7cwOujTKR50" resolve="situationReference" />
                </node>
                <node concept="2OqwBi" id="7cwOujTKEQa" role="37vLTJ">
                  <node concept="37vLTw" id="7cwOujTKEdW" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTK6A9" resolve="situationComparison" />
                  </node>
                  <node concept="3TrEf2" id="7cwOujTKGqc" role="2OqNvi">
                    <ref role="3Tt5mk" to="9m6y:2N2z8ucP8TP" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7cwOujTMkkW" role="3cqZAp">
              <node concept="3cpWsn" id="7cwOujTMkkZ" role="3cpWs9">
                <property role="TrG5h" value="situationConstant" />
                <node concept="3Tqbb2" id="7cwOujTMkkU" role="1tU5fm">
                  <ref role="ehGHo" to="9m6y:4prIPW_vxQP" resolve="StringConstant" />
                </node>
                <node concept="2ShNRf" id="7cwOujTM$LU" role="33vP2m">
                  <node concept="3zrR0B" id="7cwOujTMkWp" role="2ShVmc">
                    <node concept="3Tqbb2" id="7cwOujTMkWq" role="3zrR0E">
                      <ref role="ehGHo" to="9m6y:4prIPW_vxQP" resolve="StringConstant" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7cwOujTMH$0" role="3cqZAp">
              <node concept="37vLTI" id="7cwOujTMKVe" role="3clFbG">
                <node concept="2OqwBi" id="7cwOujTMIay" role="37vLTJ">
                  <node concept="37vLTw" id="7cwOujTMHzY" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTMkkZ" resolve="situationConstant" />
                  </node>
                  <node concept="3TrcHB" id="7cwOujTMK4p" role="2OqNvi">
                    <ref role="3TsBF5" to="9m6y:4prIPW_vxQV" resolve="value" />
                  </node>
                </node>
                <node concept="37vLTw" id="6VW9HMuv5zq" role="37vLTx">
                  <ref role="3cqZAo" node="6VW9HMupXDW" resolve="situation" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7cwOujTLV5M" role="3cqZAp">
              <node concept="37vLTI" id="7cwOujTM30A" role="3clFbG">
                <node concept="37vLTw" id="7cwOujTN1eL" role="37vLTx">
                  <ref role="3cqZAo" node="7cwOujTMkkZ" resolve="situationConstant" />
                </node>
                <node concept="2OqwBi" id="7cwOujTM0fJ" role="37vLTJ">
                  <node concept="37vLTw" id="7cwOujTLV5K" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTK6A9" resolve="situationComparison" />
                  </node>
                  <node concept="3TrEf2" id="7cwOujTM1qh" role="2OqNvi">
                    <ref role="3Tt5mk" to="9m6y:2N2z8ucP8TS" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7cwOujTNac8" role="3cqZAp">
              <node concept="2OqwBi" id="7cwOujTNcVx" role="3clFbG">
                <node concept="2OqwBi" id="7cwOujTNaLX" role="2Oq$k0">
                  <node concept="37vLTw" id="7cwOujTNac6" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTHeHJ" resolve="checkAll" />
                  </node>
                  <node concept="3Tsc0h" id="7cwOujTNbPZ" role="2OqNvi">
                    <ref role="3TtcxE" to="9m6y:6G1rrAAO$In" resolve="commands" />
                  </node>
                </node>
                <node concept="TSZUe" id="7cwOujTNgFR" role="2OqNvi">
                  <node concept="37vLTw" id="7cwOujTNx45" role="25WWJ7">
                    <ref role="3cqZAo" node="7cwOujTK6A9" resolve="situationComparison" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7cwOujTKxvR" role="3cqZAp" />
            <node concept="3cpWs8" id="6VW9HMuv8cA" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMuv8cB" role="3cpWs9">
                <property role="TrG5h" value="argComparison" />
                <node concept="3Tqbb2" id="6VW9HMuv8cC" role="1tU5fm">
                  <ref role="ehGHo" to="9m6y:4j0ekou27iA" resolve="ComparisonExpression" />
                </node>
                <node concept="2ShNRf" id="6VW9HMuv8cD" role="33vP2m">
                  <node concept="3zrR0B" id="6VW9HMuv8cE" role="2ShVmc">
                    <node concept="3Tqbb2" id="6VW9HMuv8cF" role="3zrR0E">
                      <ref role="ehGHo" to="9m6y:4j0ekou27iA" resolve="ComparisonExpression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6VW9HMuv8cG" role="3cqZAp">
              <node concept="37vLTI" id="6VW9HMuv8cH" role="3clFbG">
                <node concept="Xl_RD" id="6VW9HMuv8cI" role="37vLTx">
                  <property role="Xl_RC" value="==" />
                </node>
                <node concept="2OqwBi" id="6VW9HMuv8cJ" role="37vLTJ">
                  <node concept="37vLTw" id="6VW9HMuv8cK" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMuv8cB" resolve="argComparison" />
                  </node>
                  <node concept="3TrcHB" id="6VW9HMuv8cL" role="2OqNvi">
                    <ref role="3TsBF5" to="9m6y:4j0ekou27iB" resolve="operator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6VW9HMuv8cM" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMuv8cN" role="3cpWs9">
                <property role="TrG5h" value="argReference" />
                <node concept="3Tqbb2" id="6VW9HMuv8cO" role="1tU5fm">
                  <ref role="ehGHo" to="9m6y:7J45ATPmrdu" resolve="ArgumentReference" />
                </node>
                <node concept="2ShNRf" id="6VW9HMuv8cP" role="33vP2m">
                  <node concept="3zrR0B" id="6VW9HMuv8cQ" role="2ShVmc">
                    <node concept="3Tqbb2" id="6VW9HMuv8cR" role="3zrR0E">
                      <ref role="ehGHo" to="9m6y:7J45ATPmrdu" resolve="ArgumentReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6VW9HMuv8cS" role="3cqZAp">
              <node concept="37vLTI" id="6VW9HMuv8cT" role="3clFbG">
                <node concept="2OqwBi" id="6VW9HMuv8cU" role="37vLTJ">
                  <node concept="37vLTw" id="6VW9HMuv8cV" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMuv8cN" resolve="argReference" />
                  </node>
                  <node concept="3TrEf2" id="6VW9HMuv8cW" role="2OqNvi">
                    <ref role="3Tt5mk" to="9m6y:7J45ATPmrdv" resolve="declaration" />
                  </node>
                </node>
                <node concept="37vLTw" id="6VW9HMuvtiC" role="37vLTx">
                  <ref role="3cqZAo" node="7cwOujTFqaI" resolve="argDeclaration" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6VW9HMuv8cY" role="3cqZAp">
              <node concept="37vLTI" id="6VW9HMuv8cZ" role="3clFbG">
                <node concept="37vLTw" id="6VW9HMuv8d0" role="37vLTx">
                  <ref role="3cqZAo" node="6VW9HMuv8cN" resolve="argReference" />
                </node>
                <node concept="2OqwBi" id="6VW9HMuv8d1" role="37vLTJ">
                  <node concept="37vLTw" id="6VW9HMuv8d2" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMuv8cB" resolve="argComparison" />
                  </node>
                  <node concept="3TrEf2" id="6VW9HMuv8d3" role="2OqNvi">
                    <ref role="3Tt5mk" to="9m6y:2N2z8ucP8TP" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6VW9HMuv8d4" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMuv8d5" role="3cpWs9">
                <property role="TrG5h" value="argConstant" />
                <node concept="3Tqbb2" id="6VW9HMuv8d6" role="1tU5fm">
                  <ref role="ehGHo" to="9m6y:4prIPW_vxQP" resolve="StringConstant" />
                </node>
                <node concept="2ShNRf" id="6VW9HMuv8d7" role="33vP2m">
                  <node concept="3zrR0B" id="6VW9HMuv8d8" role="2ShVmc">
                    <node concept="3Tqbb2" id="6VW9HMuv8d9" role="3zrR0E">
                      <ref role="ehGHo" to="9m6y:4prIPW_vxQP" resolve="StringConstant" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6VW9HMuv8da" role="3cqZAp">
              <node concept="37vLTI" id="6VW9HMuv8db" role="3clFbG">
                <node concept="2OqwBi" id="6VW9HMuv8dc" role="37vLTJ">
                  <node concept="37vLTw" id="6VW9HMuv8dd" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMuv8d5" resolve="argConstant" />
                  </node>
                  <node concept="3TrcHB" id="6VW9HMuv8de" role="2OqNvi">
                    <ref role="3TsBF5" to="9m6y:4prIPW_vxQV" resolve="value" />
                  </node>
                </node>
                <node concept="37vLTw" id="6VW9HMuv_K4" role="37vLTx">
                  <ref role="3cqZAo" node="6VW9HMupXE8" resolve="argument" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6VW9HMuv8dg" role="3cqZAp">
              <node concept="37vLTI" id="6VW9HMuv8dh" role="3clFbG">
                <node concept="37vLTw" id="6VW9HMuv8di" role="37vLTx">
                  <ref role="3cqZAo" node="6VW9HMuv8d5" resolve="argConstant" />
                </node>
                <node concept="2OqwBi" id="6VW9HMuv8dj" role="37vLTJ">
                  <node concept="37vLTw" id="6VW9HMuv8dk" role="2Oq$k0">
                    <ref role="3cqZAo" node="6VW9HMuv8cB" resolve="argComparison" />
                  </node>
                  <node concept="3TrEf2" id="6VW9HMuv8dl" role="2OqNvi">
                    <ref role="3Tt5mk" to="9m6y:2N2z8ucP8TS" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6VW9HMuv8dm" role="3cqZAp">
              <node concept="2OqwBi" id="6VW9HMuv8dn" role="3clFbG">
                <node concept="2OqwBi" id="6VW9HMuv8do" role="2Oq$k0">
                  <node concept="37vLTw" id="6VW9HMuv8dp" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTHeHJ" resolve="checkAll" />
                  </node>
                  <node concept="3Tsc0h" id="6VW9HMuv8dq" role="2OqNvi">
                    <ref role="3TtcxE" to="9m6y:6G1rrAAO$In" resolve="commands" />
                  </node>
                </node>
                <node concept="TSZUe" id="6VW9HMuv8dr" role="2OqNvi">
                  <node concept="37vLTw" id="6VW9HMuv8ds" role="25WWJ7">
                    <ref role="3cqZAo" node="6VW9HMuv8cB" resolve="argComparison" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6VW9HMuv5Fe" role="3cqZAp" />
            <node concept="3clFbF" id="7cwOujTJKle" role="3cqZAp">
              <node concept="37vLTI" id="7cwOujTJMRg" role="3clFbG">
                <node concept="37vLTw" id="7cwOujTJTvL" role="37vLTx">
                  <ref role="3cqZAo" node="7cwOujTHeHJ" resolve="checkAll" />
                </node>
                <node concept="2OqwBi" id="7cwOujTJKWI" role="37vLTJ">
                  <node concept="37vLTw" id="7cwOujTJKlc" role="2Oq$k0">
                    <ref role="3cqZAo" node="7cwOujTDCDX" resolve="predicateNode" />
                  </node>
                  <node concept="3TrEf2" id="7cwOujTJMrQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="9m6y:1NaDAfMDNhu" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7cwOujTHvcf" role="3cqZAp" />
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
                    <ref role="3cqZAo" node="7cwOujTDCDX" resolve="predicateNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6VW9HMuvET1" role="3cqZAp" />
            <node concept="3cpWs8" id="6VW9HMuvUoU" role="3cqZAp">
              <node concept="3cpWsn" id="6VW9HMuvUoX" role="3cpWs9">
                <property role="TrG5h" value="emptyLine" />
                <node concept="3Tqbb2" id="6VW9HMuvUoS" role="1tU5fm">
                  <ref role="ehGHo" to="9m6y:3k8K6pfKwP2" resolve="EmptyLine" />
                </node>
                <node concept="2ShNRf" id="6VW9HMuwehc" role="33vP2m">
                  <node concept="3zrR0B" id="6VW9HMuvVeF" role="2ShVmc">
                    <node concept="3Tqbb2" id="6VW9HMuvVeG" role="3zrR0E">
                      <ref role="ehGHo" to="9m6y:3k8K6pfKwP2" resolve="EmptyLine" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6VW9HMuwr9A" role="3cqZAp">
              <node concept="2OqwBi" id="6VW9HMuwxLP" role="3clFbG">
                <node concept="2OqwBi" id="6VW9HMuwuxJ" role="2Oq$k0">
                  <node concept="2OqwBi" id="6VW9HMuwscp" role="2Oq$k0">
                    <node concept="2OqwBi" id="6VW9HMuwr9w" role="2Oq$k0">
                      <node concept="2WthIp" id="6VW9HMuwr9z" role="2Oq$k0" />
                      <node concept="3gHZIF" id="6VW9HMuwr9_" role="2OqNvi">
                        <ref role="2WH_rO" node="7cwOujTDu2A" resolve="node" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="6VW9HMuwu7t" role="2OqNvi">
                      <ref role="3Tt5mk" to="9m6y:3k8K6pfKxCj" resolve="body" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="6VW9HMuwwf4" role="2OqNvi">
                    <ref role="3TtcxE" to="9m6y:1NaDAfMCtE7" resolve="commands" />
                  </node>
                </node>
                <node concept="TSZUe" id="6VW9HMuwBGw" role="2OqNvi">
                  <node concept="37vLTw" id="6VW9HMuwVPK" role="25WWJ7">
                    <ref role="3cqZAo" node="6VW9HMuvUoX" resolve="emptyLine" />
                  </node>
                </node>
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

