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
      <concept id="5180555686068913243" name="SemanticLanguage.structure.DomainSpecificModel" flags="ng" index="2oCoeD" />
      <concept id="3225294796961910388" name="SemanticLanguage.structure.BinaryLogicalExpression" flags="ng" index="2w5wbN">
        <child id="3225294796961910389" name="left" index="2w5wbM" />
        <child id="3225294796961910392" name="right" index="2w5wbZ" />
      </concept>
      <concept id="2073504467209504078" name="SemanticLanguage.structure.StringType" flags="ng" index="2$WXgt" />
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
    </language>
  </registry>
  <node concept="2oCoeD" id="2Kv86LydB7v">
    <property role="TrG5h" value="SupplyDSL" />
  </node>
  <node concept="2M3LeA" id="2Kv86LydBff">
    <property role="TrG5h" value="ExampleAll" />
    <node concept="3IqRW4" id="2Kv86LydBfg" role="1UMHDP">
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
              <ref role="eBqkL" node="35F8Px_6PgV" resolve="arg" />
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
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="35F8Px_6PmH" role="1zlxRh" />
        </node>
      </node>
      <node concept="1UMGO$" id="6VW9HMuxgdk" role="3IqRN$" />
      <node concept="3Irp9s" id="6VW9HMuxjzh" role="3IqRN$">
        <property role="TrG5h" value="на_что" />
        <node concept="1zlxZD" id="6VW9HMuxjzi" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="6VW9HMuxjzj" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="6VW9HMuxjzk" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="6VW9HMuxjzl" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="6VW9HMuxjzm" role="3Irp8X">
          <node concept="1qM4Rw" id="6VW9HMuxjzo" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="6VW9HMuxjzp" role="2w5wbM">
              <ref role="eBqkL" node="6VW9HMuxjzi" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="6VW9HMuxjzq" role="2w5wbZ">
              <property role="1z9qr$" value="S0" />
            </node>
          </node>
          <node concept="1qM4Rw" id="6VW9HMuxjzr" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="6VW9HMuxjzs" role="2w5wbM">
              <ref role="eBqkL" node="6VW9HMuxjzk" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="6VW9HMuxjzt" role="2w5wbZ">
              <property role="1z9qr$" value="мотоцикл" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="6VW9HMuxjzu" role="3IqRN$" />
      <node concept="3Irp9s" id="6VW9HMuxjzv" role="3IqRN$">
        <property role="TrG5h" value="что" />
        <node concept="1zlxZD" id="6VW9HMuxjzw" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="6VW9HMuxjzx" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="6VW9HMuxjzy" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="6VW9HMuxjzz" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="6VW9HMuxjz$" role="3Irp8X">
          <node concept="1qM4Rw" id="6VW9HMuxjzA" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="6VW9HMuxjzB" role="2w5wbM">
              <ref role="eBqkL" node="6VW9HMuxjzw" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="6VW9HMuxjzC" role="2w5wbZ">
              <property role="1z9qr$" value="S0" />
            </node>
          </node>
          <node concept="1qM4Rw" id="6VW9HMuxjzD" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="6VW9HMuxjzE" role="2w5wbM">
              <ref role="eBqkL" node="6VW9HMuxjzy" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="6VW9HMuxjzF" role="2w5wbZ">
              <property role="1z9qr$" value="мотоцикл" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="6VW9HMuxjzG" role="3IqRN$" />
      <node concept="3Irp9s" id="6VW9HMuxjzH" role="3IqRN$">
        <property role="TrG5h" value="за_что" />
        <node concept="1zlxZD" id="6VW9HMuxjzI" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="6VW9HMuxjzJ" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="6VW9HMuxjzK" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="6VW9HMuxjzL" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="6VW9HMuxjzM" role="3Irp8X">
          <node concept="1qM4Rw" id="6VW9HMuxjzO" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="6VW9HMuxjzP" role="2w5wbM">
              <ref role="eBqkL" node="6VW9HMuxjzI" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="6VW9HMuxjzQ" role="2w5wbZ">
              <property role="1z9qr$" value="S0" />
            </node>
          </node>
          <node concept="1qM4Rw" id="6VW9HMuxjzR" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="6VW9HMuxjzS" role="2w5wbM">
              <ref role="eBqkL" node="6VW9HMuxjzK" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="6VW9HMuxjzT" role="2w5wbZ">
              <property role="1z9qr$" value="мотоцикл" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="6VW9HMuxjzU" role="3IqRN$" />
      <node concept="3Irp9s" id="6VW9HMuxjzV" role="3IqRN$">
        <property role="TrG5h" value="объект" />
        <node concept="1zlxZD" id="6VW9HMuxjzW" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="6VW9HMuxjzX" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="6VW9HMuxjzY" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="6VW9HMuxjzZ" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="6VW9HMuxj$0" role="3Irp8X">
          <node concept="1qM4Rw" id="6VW9HMuxj$2" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="6VW9HMuxj$3" role="2w5wbM">
              <ref role="eBqkL" node="6VW9HMuxjzW" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="6VW9HMuxj$4" role="2w5wbZ">
              <property role="1z9qr$" value="S0" />
            </node>
          </node>
          <node concept="1qM4Rw" id="6VW9HMuxj$5" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="6VW9HMuxj$6" role="2w5wbM">
              <ref role="eBqkL" node="6VW9HMuxjzY" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="6VW9HMuxj$7" role="2w5wbZ">
              <property role="1z9qr$" value="иван" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="6VW9HMuxj$8" role="3IqRN$" />
      <node concept="3Irp9s" id="6VW9HMuxj$9" role="3IqRN$">
        <property role="TrG5h" value="что_делает" />
        <node concept="1zlxZD" id="6VW9HMuxj$a" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="6VW9HMuxj$b" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="6VW9HMuxj$c" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="6VW9HMuxj$d" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="6VW9HMuxj$e" role="3Irp8X">
          <node concept="1qM4Rw" id="6VW9HMuxj$g" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="6VW9HMuxj$h" role="2w5wbM">
              <ref role="eBqkL" node="6VW9HMuxj$a" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="6VW9HMuxj$i" role="2w5wbZ">
              <property role="1z9qr$" value="S0" />
            </node>
          </node>
          <node concept="1qM4Rw" id="6VW9HMuxj$j" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="6VW9HMuxj$k" role="2w5wbM">
              <ref role="eBqkL" node="6VW9HMuxj$c" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="6VW9HMuxj$l" role="2w5wbZ">
              <property role="1z9qr$" value="купить" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="6VW9HMuxj$m" role="3IqRN$" />
    </node>
  </node>
</model>

