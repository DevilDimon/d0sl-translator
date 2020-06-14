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
      <node concept="1UMGO$" id="6VW9HMuxjzu" role="3IqRN$" />
      <node concept="1UMGO$" id="6VW9HMuxjzG" role="3IqRN$" />
      <node concept="1UMGO$" id="2a4_gVd$2uI" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3zd" role="3IqRN$">
        <property role="TrG5h" value="объект" />
        <node concept="1zlxZD" id="2a4_gVd$3ze" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3zf" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3zg" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3zh" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3zi" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3zk" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3zl" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3ze" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3zm" role="2w5wbZ">
              <property role="1z9qr$" value="S4" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3zn" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3zo" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3zg" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3zp" role="2w5wbZ">
              <property role="1z9qr$" value="компания" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3zq" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3zr" role="3IqRN$">
        <property role="TrG5h" value="что_делает" />
        <node concept="1zlxZD" id="2a4_gVd$3zs" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3zt" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3zu" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3zv" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3zw" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3zy" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3zz" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3zs" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3z$" role="2w5wbZ">
              <property role="1z9qr$" value="S4" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3z_" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3zA" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3zu" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3zB" role="2w5wbZ">
              <property role="1z9qr$" value="сообщать" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3zC" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3zD" role="3IqRN$">
        <property role="TrG5h" value="что_делает" />
        <node concept="1zlxZD" id="2a4_gVd$3zE" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3zF" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3zG" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3zH" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3zI" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3zK" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3zL" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3zE" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3zM" role="2w5wbZ">
              <property role="1z9qr$" value="S2" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3zN" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3zO" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3zG" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3zP" role="2w5wbZ">
              <property role="1z9qr$" value="сообщать" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3zQ" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3zR" role="3IqRN$">
        <property role="TrG5h" value="какой" />
        <node concept="1zlxZD" id="2a4_gVd$3zS" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3zT" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3zU" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3zV" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3zW" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3zY" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3zZ" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3zS" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3$0" role="2w5wbZ">
              <property role="1z9qr$" value="S2" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3$1" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3$2" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3zU" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3$3" role="2w5wbZ">
              <property role="1z9qr$" value="антивирусный" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3$4" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3$5" role="3IqRN$">
        <property role="TrG5h" value="объект" />
        <node concept="1zlxZD" id="2a4_gVd$3$6" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3$7" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3$8" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3$9" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3$a" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3$c" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3$d" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3$6" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3$e" role="2w5wbZ">
              <property role="1z9qr$" value="S2" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3$f" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3$g" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3$8" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3$h" role="2w5wbZ">
              <property role="1z9qr$" value="компания" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3$i" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3$j" role="3IqRN$">
        <property role="TrG5h" value="что_делает" />
        <node concept="1zlxZD" id="2a4_gVd$3$k" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3$l" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3$m" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3$n" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3$o" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3$q" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3$r" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3$k" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3$s" role="2w5wbZ">
              <property role="1z9qr$" value="S0" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3$t" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3$u" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3$m" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3$v" role="2w5wbZ">
              <property role="1z9qr$" value="сообщать" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3$w" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3$x" role="3IqRN$">
        <property role="TrG5h" value="какой" />
        <node concept="1zlxZD" id="2a4_gVd$3$y" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3$z" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3$$" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3$_" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3$A" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3$C" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3$D" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3$y" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3$E" role="2w5wbZ">
              <property role="1z9qr$" value="S0" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3$F" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3$G" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3$$" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3$H" role="2w5wbZ">
              <property role="1z9qr$" value="международный" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3$I" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3$J" role="3IqRN$">
        <property role="TrG5h" value="объект" />
        <node concept="1zlxZD" id="2a4_gVd$3$K" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3$L" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3$M" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3$N" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3$O" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3$Q" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3$R" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3$K" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3$S" role="2w5wbZ">
              <property role="1z9qr$" value="S0" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3$T" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3$U" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3$M" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3$V" role="2w5wbZ">
              <property role="1z9qr$" value="компания" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3$W" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3$X" role="3IqRN$">
        <property role="TrG5h" value="что_делает" />
        <node concept="1zlxZD" id="2a4_gVd$3$Y" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3$Z" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3_0" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3_1" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3_2" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3_4" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3_5" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3$Y" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3_6" role="2w5wbZ">
              <property role="1z9qr$" value="S5" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3_7" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3_8" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3_0" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3_9" role="2w5wbZ">
              <property role="1z9qr$" value="сообщать" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3_a" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3_b" role="3IqRN$">
        <property role="TrG5h" value="какой" />
        <node concept="1zlxZD" id="2a4_gVd$3_c" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3_d" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3_e" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3_f" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3_g" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3_i" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3_j" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3_c" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3_k" role="2w5wbZ">
              <property role="1z9qr$" value="S5" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3_l" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3_m" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3_e" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3_n" role="2w5wbZ">
              <property role="1z9qr$" value="новый" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3_o" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3_p" role="3IqRN$">
        <property role="TrG5h" value="объект" />
        <node concept="1zlxZD" id="2a4_gVd$3_q" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3_r" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3_s" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3_t" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3_u" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3_w" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3_x" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3_q" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3_y" role="2w5wbZ">
              <property role="1z9qr$" value="S5" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3_z" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3_$" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3_s" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3__" role="2w5wbZ">
              <property role="1z9qr$" value="модификация" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3_A" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3_B" role="3IqRN$">
        <property role="TrG5h" value="объект" />
        <node concept="1zlxZD" id="2a4_gVd$3_C" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3_D" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3_E" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3_F" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3_G" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3_I" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3_J" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3_C" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3_K" role="2w5wbZ">
              <property role="1z9qr$" value="S3" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3_L" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3_M" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3_E" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3_N" role="2w5wbZ">
              <property role="1z9qr$" value="который" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3_O" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3_P" role="3IqRN$">
        <property role="TrG5h" value="что_делает" />
        <node concept="1zlxZD" id="2a4_gVd$3_Q" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3_R" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3_S" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3_T" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3_U" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3_W" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3_X" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3_Q" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3_Y" role="2w5wbZ">
              <property role="1z9qr$" value="S3" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3_Z" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3A0" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3_S" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3A1" role="2w5wbZ">
              <property role="1z9qr$" value="сообщать" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3A2" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3A3" role="3IqRN$">
        <property role="TrG5h" value="что_делает" />
        <node concept="1zlxZD" id="2a4_gVd$3A4" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3A5" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3A6" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3A7" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3A8" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3Aa" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3Ab" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3A4" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3Ac" role="2w5wbZ">
              <property role="1z9qr$" value="S1" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3Ad" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3Ae" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3A6" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3Af" role="2w5wbZ">
              <property role="1z9qr$" value="сообщать" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3Ag" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3Ah" role="3IqRN$">
        <property role="TrG5h" value="какой" />
        <node concept="1zlxZD" id="2a4_gVd$3Ai" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3Aj" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3Ak" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3Al" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3Am" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3Ao" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3Ap" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3Ai" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3Aq" role="2w5wbZ">
              <property role="1z9qr$" value="S1" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3Ar" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3As" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3Ak" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3At" role="2w5wbZ">
              <property role="1z9qr$" value="банковский" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3Au" role="3IqRN$" />
      <node concept="3Irp9s" id="2a4_gVd$3Av" role="3IqRN$">
        <property role="TrG5h" value="объект" />
        <node concept="1zlxZD" id="2a4_gVd$3Aw" role="1zlniG">
          <property role="TrG5h" value="situation" />
          <node concept="2$WXgt" id="2a4_gVd$3Ax" role="1zlxRh" />
        </node>
        <node concept="1zlxZD" id="2a4_gVd$3Ay" role="1zlniG">
          <property role="TrG5h" value="arg" />
          <node concept="2$WXgt" id="2a4_gVd$3Az" role="1zlxRh" />
        </node>
        <node concept="3dOMoJ" id="2a4_gVd$3A$" role="3Irp8X">
          <node concept="1qM4Rw" id="2a4_gVd$3AA" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3AB" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3Aw" resolve="situation" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3AC" role="2w5wbZ">
              <property role="1z9qr$" value="S1" />
            </node>
          </node>
          <node concept="1qM4Rw" id="2a4_gVd$3AD" role="3dOMoI">
            <property role="1qM4Rx" value="==" />
            <node concept="eBqkK" id="2a4_gVd$3AE" role="2w5wbM">
              <ref role="eBqkL" node="2a4_gVd$3Ay" resolve="arg" />
            </node>
            <node concept="1z9qrE" id="2a4_gVd$3AF" role="2w5wbZ">
              <property role="1z9qr$" value="троян" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1UMGO$" id="2a4_gVd$3AG" role="3IqRN$" />
    </node>
  </node>
</model>

