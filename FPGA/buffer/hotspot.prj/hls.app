<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="hotspot_HW" name="hotspot.prj">
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="../../3dHLS-test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="3dHLS.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <Simulation argv="../../../../../data/power_64x8 ../../../../../data/temp_64x8">
        <SimFlow name="csim" setup="false" optimizeCompile="true" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

