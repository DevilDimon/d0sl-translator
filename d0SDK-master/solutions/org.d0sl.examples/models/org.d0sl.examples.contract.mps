<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4094681a-8e2f-409b-a3c4-3b9dfecf1c7e(org.d0sl.examples.contract)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="33179490-6db2-4c80-bd28-66b0152ec77c" name="SemanticLanguage" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="1a8554c4-eb84-43ba-8c34-6f0d90c6e75a" name="jetbrains.mps.lang.smodel.query" version="3" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
  </languages>
  <imports>
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="nvd4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.repository(MPS.OpenAPI/)" />
    <import index="rq1s" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.repository(MPS.Platform/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="4065387505485742749" name="jetbrains.mps.lang.smodel.structure.AbstractPointerResolveOperation" flags="ng" index="2yCiFS">
        <child id="3648723375513868575" name="repositoryArg" index="Vysub" />
      </concept>
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="3648723375513868532" name="jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation" flags="ng" index="Vyspw" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
    <language id="1a8554c4-eb84-43ba-8c34-6f0d90c6e75a" name="jetbrains.mps.lang.smodel.query">
      <concept id="2822369470875160718" name="jetbrains.mps.lang.smodel.query.structure.NodesExpression" flags="ng" index="2Jgcaq" />
      <concept id="4234138103881610891" name="jetbrains.mps.lang.smodel.query.structure.WithStatement" flags="ng" index="L3pyB">
        <property id="192970713427626335" name="includeNonEditable" index="1Fhty8" />
        <child id="4234138103881610935" name="scope" index="L3pyr" />
        <child id="4234138103881610892" name="stmts" index="L3pyw" />
      </concept>
    </language>
    <language id="33179490-6db2-4c80-bd28-66b0152ec77c" name="SemanticLanguage">
      <concept id="8918277825771451230" name="SemanticLanguage.structure.ArgumentReference" flags="ng" index="eBqkK">
        <reference id="8918277825771451231" name="declaration" index="eBqkL" />
      </concept>
      <concept id="5180555686068913243" name="SemanticLanguage.structure.DomainSpecificModel" flags="ng" index="2oCoeD">
        <child id="5180555686068913699" name="elements" index="2oCo7h" />
      </concept>
      <concept id="3225294796961910388" name="SemanticLanguage.structure.BinaryLogicalExpression" flags="ng" index="2w5wbN">
        <child id="3225294796961910389" name="left" index="2w5wbM" />
        <child id="3225294796961910392" name="right" index="2w5wbZ" />
      </concept>
      <concept id="2073504467209504078" name="SemanticLanguage.structure.StringType" flags="ng" index="2$WXgt" />
      <concept id="2537342212761094603" name="SemanticLanguage.structure.Usage" flags="ng" index="2M3fE7">
        <property id="2826170137865511778" name="classname" index="1xsJ6A" />
        <reference id="2537342212761094604" name="contract" index="2M3fE0" />
      </concept>
      <concept id="2537342212761018602" name="SemanticLanguage.structure.SemanticModel" flags="ng" index="2M3LeA">
        <child id="3821515829481183763" name="body" index="1UMHDP" />
      </concept>
      <concept id="7710564681170176918" name="SemanticLanguage.structure.CheckAll" flags="ng" index="3dOMoJ">
        <child id="7710564681170176919" name="commands" index="3dOMoI" />
      </concept>
      <concept id="4954022563421910182" name="SemanticLanguage.structure.ComparisonExpression" flags="ng" index="1qM4Rw">
        <property id="4954022563421910183" name="operator" index="1qM4Rx" />
      </concept>
      <concept id="5069851822860934581" name="SemanticLanguage.structure.StringConstant" flags="ng" index="1z9qrE">
        <property id="5069851822860934587" name="value" index="1z9qr$" />
      </concept>
      <concept id="5069851822853563574" name="SemanticLanguage.structure.ArgumentDeclaration" flags="ng" index="1zlxZD">
        <child id="5069851822853564046" name="type" index="1zlxRh" />
      </concept>
      <concept id="2074653526560201063" name="SemanticLanguage.structure.CommandList" flags="ng" index="3IqRW4">
        <child id="2074653526560201351" name="commands" index="3IqRN$" />
      </concept>
      <concept id="2074653526560551999" name="SemanticLanguage.structure.PredicateDef" flags="ng" index="3Irp9s">
        <child id="5069851822853640179" name="args" index="1zlniG" />
        <child id="2074653526560552030" name="result" index="3Irp8X" />
      </concept>
      <concept id="3821515829481180482" name="SemanticLanguage.structure.EmptyLine" flags="ng" index="1UMGO$" />
      <concept id="4103250198433423526" name="SemanticLanguage.structure.Typedef" flags="ng" index="3YRkNQ" />
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
    </language>
  </registry>
  <node concept="2oCoeD" id="2Kv86LydB7v">
    <property role="TrG5h" value="SupplyDSL" />
  </node>
  <node concept="2oCoeD" id="2Kv86LydBbn">
    <property role="TrG5h" value="CommonDSL" />
    <node concept="3YRkNQ" id="35F8Px_6Kl_" role="2oCo7h">
      <property role="TrG5h" value="Situation" />
    </node>
  </node>
  <node concept="2M3LeA" id="2Kv86LydBff">
    <property role="TrG5h" value="SupplyAII" />
    <node concept="3IqRW4" id="2Kv86LydBfg" role="1UMHDP">
      <node concept="2M3fE7" id="35F8Px_6Dcf" role="3IqRN$">
        <property role="1xsJ6A" value="org.d0sl.examples.contact.CommonDSL" />
        <ref role="2M3fE0" node="2Kv86LydBbn" resolve="CommonDSL" />
      </node>
      <node concept="1UMGO$" id="35F8Px_6DaH" role="3IqRN$" />
      <node concept="1X3_iC" id="7cwOujT_svR" role="lGtFl">
        <property role="3V$3am" value="commands" />
        <property role="3V$3ak" value="33179490-6db2-4c80-bd28-66b0152ec77c/2074653526560201063/2074653526560201351" />
        <node concept="3Irp9s" id="37$CGxAYska" role="8Wnug">
          <property role="TrG5h" value="is supplier" />
          <node concept="1qM4Rw" id="2Kv86LyeckD" role="3Irp8X">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2Kv86LyeckE" role="2w5wbM">
              <ref role="eBqkL" node="37$CGxAYskc" resolve="side" />
            </node>
            <node concept="1z9qrE" id="2Kv86Lyeclc" role="2w5wbZ">
              <property role="1z9qr$" value="ООО \&quot;НГУ\&quot;" />
            </node>
          </node>
          <node concept="1zlxZD" id="37$CGxAYskc" role="1zlniG">
            <property role="TrG5h" value="side" />
            <node concept="2$WXgt" id="2Kv86Lyecj$" role="1zlxRh" />
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2Kv86LyegIe" role="3IqRN$" />
      <node concept="1X3_iC" id="7cwOujT_syF" role="lGtFl">
        <property role="3V$3am" value="commands" />
        <property role="3V$3ak" value="33179490-6db2-4c80-bd28-66b0152ec77c/2074653526560201063/2074653526560201351" />
        <node concept="3Irp9s" id="2Kv86LyegIz" role="8Wnug">
          <property role="TrG5h" value="is buyer" />
          <node concept="1qM4Rw" id="2Kv86LyegI$" role="3Irp8X">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2Kv86LyegI_" role="2w5wbM">
              <ref role="eBqkL" node="2Kv86LyegIB" resolve="side" />
            </node>
            <node concept="1z9qrE" id="2Kv86LyegIA" role="2w5wbZ">
              <property role="1z9qr$" value="ООО \&quot;Академпарк\&quot;" />
            </node>
          </node>
          <node concept="1zlxZD" id="2Kv86LyegIB" role="1zlniG">
            <property role="TrG5h" value="side" />
            <node concept="2$WXgt" id="2Kv86LyegIC" role="1zlxRh" />
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2Kv86LydINP" role="3IqRN$" />
      <node concept="1X3_iC" id="7cwOujT_s_4" role="lGtFl">
        <property role="3V$3am" value="commands" />
        <property role="3V$3ak" value="33179490-6db2-4c80-bd28-66b0152ec77c/2074653526560201063/2074653526560201351" />
        <node concept="3Irp9s" id="35F8Px_6KEY" role="8Wnug">
          <property role="TrG5h" value="собираться" />
          <node concept="1zlxZD" id="35F8Px_6KXJ" role="1zlniG">
            <property role="TrG5h" value="situation" />
            <node concept="2$WXgt" id="35F8Px_6MMh" role="1zlxRh" />
          </node>
          <node concept="1zlxZD" id="35F8Px_6MmG" role="1zlniG">
            <property role="TrG5h" value="what" />
            <node concept="2$WXgt" id="35F8Px_6MuD" role="1zlxRh" />
          </node>
          <node concept="1zlxZD" id="35F8Px_6Mv9" role="1zlniG">
            <property role="TrG5h" value="where" />
            <node concept="2$WXgt" id="35F8Px_6MyK" role="1zlxRh" />
          </node>
          <node concept="3dOMoJ" id="35F8Px_6MGo" role="3Irp8X">
            <node concept="1qM4Rw" id="35F8Px_6MOf" role="3dOMoI">
              <property role="1qM4Rx" value="==" />
              <node concept="eBqkK" id="35F8Px_6MOg" role="2w5wbM">
                <ref role="eBqkL" node="35F8Px_6KXJ" resolve="situation" />
              </node>
              <node concept="1z9qrE" id="35F8Px_6MPP" role="2w5wbZ">
                <property role="1z9qr$" value="s1" />
              </node>
            </node>
            <node concept="1qM4Rw" id="35F8Px_6MVp" role="3dOMoI">
              <property role="1qM4Rx" value="==" />
              <node concept="eBqkK" id="35F8Px_6MVq" role="2w5wbM">
                <ref role="eBqkL" node="35F8Px_6MmG" resolve="what" />
              </node>
              <node concept="1z9qrE" id="35F8Px_6MYy" role="2w5wbZ">
                <property role="1z9qr$" value="комплект документов" />
              </node>
            </node>
            <node concept="1qM4Rw" id="35F8Px_6N71" role="3dOMoI">
              <property role="1qM4Rx" value="==" />
              <node concept="eBqkK" id="35F8Px_6N72" role="2w5wbM">
                <ref role="eBqkL" node="35F8Px_6Mv9" resolve="where" />
              </node>
              <node concept="1z9qrE" id="35F8Px_6N8E" role="2w5wbZ">
                <property role="1z9qr$" value="на факультете" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="35F8Px_6Njk" role="3IqRN$" />
      <node concept="3Irp9s" id="35F8Px_6Nqn" role="3IqRN$">
        <property role="TrG5h" value="after" />
        <node concept="3dOMoJ" id="35F8Px_6NL9" role="3Irp8X">
          <node concept="1qM4Rw" id="35F8Px_6NO4" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="35F8Px_6NO5" role="2w5wbM">
              <ref role="eBqkL" node="35F8Px_6NzN" resolve="situation1" />
            </node>
            <node concept="1z9qrE" id="35F8Px_6NPF" role="2w5wbZ">
              <property role="1z9qr$" value="s2" />
            </node>
          </node>
          <node concept="1qM4Rw" id="35F8Px_6NUB" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="35F8Px_6NUC" role="2w5wbM">
              <ref role="eBqkL" node="35F8Px_6NFk" resolve="situation2" />
            </node>
            <node concept="1z9qrE" id="35F8Px_6NW1" role="2w5wbZ">
              <property role="1z9qr$" value="s1" />
            </node>
          </node>
        </node>
        <node concept="1zlxZD" id="35F8Px_6NzN" role="1zlniG">
          <property role="TrG5h" value="situation1" />
          <node concept="2$WXgt" id="35F8Px_6NEo" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="35F8Px_6NFk" role="1zlniG">
          <property role="TrG5h" value="situation2" />
          <node concept="2$WXgt" id="35F8Px_6NJl" role="1zlxRh" />
        </node>
      </node>
      <node concept="1UMGO$" id="35F8Px_6ON2" role="3IqRN$" />
      <node concept="3Irp9s" id="35F8Px_6OPQ" role="3IqRN$">
        <property role="TrG5h" value="что" />
        <node concept="3dOMoJ" id="35F8Px_6Ppn" role="3Irp8X">
          <node concept="1qM4Rw" id="35F8Px_6Prq" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="35F8Px_6Prr" role="2w5wbM">
              <ref role="eBqkL" node="35F8Px_6P2S" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="35F8Px_6Ps_" role="2w5wbZ">
              <property role="1z9qr$" value="s1" />
            </node>
          </node>
          <node concept="1qM4Rw" id="35F8Px_6Py9" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="35F8Px_6Pya" role="2w5wbM">
              <ref role="eBqkL" node="35F8Px_6PgV" resolve="what" />
            </node>
            <node concept="1z9qrE" id="35F8Px_6Pzy" role="2w5wbZ">
              <property role="1z9qr$" value="комплект документов" />
            </node>
          </node>
        </node>
        <node concept="1zlxZD" id="35F8Px_6P2S" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="35F8Px_6Peg" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="35F8Px_6PgV" role="1zlniG">
          <property role="TrG5h" value="what" />
          <node concept="2$WXgt" id="35F8Px_6PmH" role="1zlxRh" />
        </node>
      </node>
      <node concept="1UMGO$" id="35F8Px_6PEp" role="3IqRN$" />
      <node concept="1UMGO$" id="35F8Px_6PFL" role="3IqRN$" />
    </node>
  </node>
  <node concept="312cEu" id="5OpUYewFjkt">
    <property role="TrG5h" value="Joj" />
    <node concept="2YIFZL" id="5OpUYewP1EC" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="3clFbS" id="5OpUYewP1EE" role="3clF47">
        <node concept="1X3_iC" id="5OpUYewTluZ" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="5OpUYewP1EF" role="8Wnug">
            <node concept="3cpWsn" id="5OpUYewP1EG" role="3cpWs9">
              <property role="TrG5h" value="nodePtr" />
              <node concept="2sp9CU" id="5OpUYewP1EH" role="1tU5fm" />
              <node concept="2tJFMh" id="5OpUYewP1EI" role="33vP2m">
                <node concept="ZC_QK" id="5OpUYewTleH" role="2tJFKM">
                  <ref role="2aWVGs" node="2Kv86LydBff" resolve="SupplyAII" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="5OpUYex0hWS" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="L3pyB" id="5OpUYewWFeh" role="8Wnug">
            <property role="1Fhty8" value="true" />
            <node concept="3clFbS" id="5OpUYewWFej" role="L3pyw">
              <node concept="3clFbF" id="5OpUYewX41p" role="3cqZAp">
                <node concept="2OqwBi" id="5OpUYewX97M" role="3clFbG">
                  <node concept="2Jgcaq" id="5OpUYewX8Tt" role="2Oq$k0" />
                  <node concept="2es0OD" id="5OpUYewXe9u" role="2OqNvi">
                    <node concept="1bVj0M" id="5OpUYewXe9w" role="23t8la">
                      <node concept="3clFbS" id="5OpUYewXe9x" role="1bW5cS">
                        <node concept="3clFbF" id="5OpUYewXeh$" role="3cqZAp">
                          <node concept="2OqwBi" id="5OpUYewXehx" role="3clFbG">
                            <node concept="10M0yZ" id="5OpUYewXehy" role="2Oq$k0">
                              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                            </node>
                            <node concept="liA8E" id="5OpUYewXehz" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.Object)" resolve="println" />
                              <node concept="37vLTw" id="5OpUYewXelv" role="37wK5m">
                                <ref role="3cqZAo" node="5OpUYewXe9y" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5OpUYewXe9y" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5OpUYewXe9z" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="BaHAS" id="5OpUYewZ65s" role="L3pyr" />
          </node>
        </node>
        <node concept="1X3_iC" id="5OpUYewPacg" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="5OpUYewP1EL" role="8Wnug">
            <node concept="3cpWsn" id="5OpUYewP1EM" role="3cpWs9">
              <property role="TrG5h" value="m" />
              <node concept="H_c77" id="5OpUYewP1EN" role="1tU5fm" />
              <node concept="BaHAS" id="5OpUYewP1EO" role="33vP2m">
                <property role="BaHAW" value="org.d0sl.examples.contract" />
                <property role="BaGAP" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="5OpUYewQ0n5" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="5OpUYewP1EQ" role="8Wnug">
            <node concept="3cpWsn" id="5OpUYewP1ER" role="3cpWs9">
              <property role="TrG5h" value="node" />
              <node concept="3Tqbb2" id="5OpUYewP1ES" role="1tU5fm" />
              <node concept="2OqwBi" id="5OpUYewP1ET" role="33vP2m">
                <node concept="37vLTw" id="5OpUYewP1EU" role="2Oq$k0">
                  <ref role="3cqZAo" node="5OpUYewP1EG" resolve="nodePtr" />
                </node>
                <node concept="Vyspw" id="5OpUYewP1EV" role="2OqNvi">
                  <node concept="10Nm6u" id="5OpUYewP4JN" role="Vysub" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5OpUYewP1EY" role="3clF45" />
      <node concept="37vLTG" id="5OpUYewP1EZ" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="5OpUYewP1F0" role="1tU5fm">
          <node concept="17QB3L" id="5OpUYewP1F1" role="10Q1$1" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5OpUYewP1EX" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="5OpUYewFjku" role="1B3o_S" />
  </node>
</model>

