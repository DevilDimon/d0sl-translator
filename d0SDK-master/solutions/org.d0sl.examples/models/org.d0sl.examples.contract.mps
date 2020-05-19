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
  </imports>
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
    <property role="TrG5h" value="ExampleAll" />
    <node concept="3IqRW4" id="2Kv86LydBfg" role="1UMHDP">
      <node concept="2M3fE7" id="35F8Px_6Dcf" role="3IqRN$">
        <property role="1xsJ6A" value="org.d0sl.examples.contract.CommonDSL" />
        <ref role="2M3fE0" node="2Kv86LydBbn" resolve="CommonDSL" />
      </node>
      <node concept="2M3fE7" id="7cwOujTOaub" role="3IqRN$">
        <property role="1xsJ6A" value="org.d0sl.examples.contract.ExampleDSL" />
        <ref role="2M3fE0" node="7cwOujTOaqZ" resolve="ExampleDSL" />
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
      <node concept="1UMGO$" id="6VW9HMuxgdk" role="3IqRN$" />
    </node>
  </node>
  <node concept="2oCoeD" id="7cwOujTOaqZ">
    <property role="TrG5h" value="ExampleDSL" />
  </node>
</model>

