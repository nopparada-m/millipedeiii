function sysCall_init()
    --Declaring each subgroup of components for the isopod    
    --Get object handles for each object in each subgroup
    im_movement_factor = -0.3
    leg_movement_factor = 8
    bias_im = -1
    MI = 0.4

    Neuron_0 = sim.getObjectHandle("Neuron_0") --neural graph
    Neuron_1 = sim.getObjectHandle("Neuron_1")
    Hysteresis = sim.getObjectHandle("Hysteresis")
    Right_sensor = sim.getObjectHandle("Right_sensor")
    Left_sensor = sim.getObjectHandle("Left_sensor")
    
    --Sensors
    Sensor_joint0 = sim.getObjectHandle("Sensor_joint0")
    Antenna_0 = sim.getObjectHandle("Antenna_0")
    Sensor_joint1 = sim.getObjectHandle("Sensor_joint1")
    Antenna_1 = sim.getObjectHandle("Antenna_1")

    --Segment joints
    Seg0_Seg_1 = sim.getObjectHandle("Seg0_Seg1")
    Seg1_Seg_2 = sim.getObjectHandle("Seg1_Seg2")
    Seg2_Seg_3 = sim.getObjectHandle("Seg2_Seg3")
    Seg3_Seg_4 = sim.getObjectHandle("Seg3_Seg4")
    Seg4_Seg_5 = sim.getObjectHandle("Seg4_Seg5")
    Seg5_Seg_6 = sim.getObjectHandle("Seg5_Seg6")
    Seg6_Seg_7 = sim.getObjectHandle("Seg6_Seg7") 
    Seg7_Seg_8 = sim.getObjectHandle("Seg7_Seg8") 
    Seg8_Seg_9 = sim.getObjectHandle("Seg8_Seg9") 
   

    --Segments
    Seg_0 = sim.getObjectHandle("Seg_0")
    Seg_1 = sim.getObjectHandle("Seg_1")
    Seg_2 = sim.getObjectHandle("Seg_2")
    Seg_3 = sim.getObjectHandle("Seg_3")
    Seg_4 = sim.getObjectHandle("Seg_4")
    Seg_5 = sim.getObjectHandle("Seg_5")
    Seg_6 = sim.getObjectHandle("Seg_6")
    Seg_7 = sim.getObjectHandle("Seg_7")
    Seg_8 = sim.getObjectHandle("Seg_8")
    Seg_9 = sim.getObjectHandle("Seg_9")


    --Verticle body joints
    Seg0_vertbend = sim.getObjectHandle("Seg0_vertbend")
    Seg1_vertbend = sim.getObjectHandle("Seg1_vertbend")
    Seg2_vertbend = sim.getObjectHandle("Seg2_vertbend")
    Seg3_vertbend = sim.getObjectHandle("Seg3_vertbend")
    Seg4_vertbend = sim.getObjectHandle("Seg4_vertbend")
    Seg5_vertbend = sim.getObjectHandle("Seg5_vertbend")
    Seg6_vertbend = sim.getObjectHandle("Seg6_vertbend")
    Seg7_vertbend = sim.getObjectHandle("Seg7_vertbend")
    Seg8_vertbend = sim.getObjectHandle("Seg8_vertbend")
    
    --Seg10_vertbend = sim.getObjectHandle("Seg10_vertbend")

    --Horizontal body joints
    Seg0_horibend = sim.getObjectHandle("Seg0_horibend")
    Seg1_horibend = sim.getObjectHandle("Seg1_horibend")
    Seg2_horibend = sim.getObjectHandle("Seg2_horibend")
    Seg3_horibend = sim.getObjectHandle("Seg3_horibend")
    Seg4_horibend = sim.getObjectHandle("Seg4_horibend")
    Seg5_horibend = sim.getObjectHandle("Seg5_horibend")
    Seg6_horibend = sim.getObjectHandle("Seg6_horibend")
    Seg7_horibend = sim.getObjectHandle("Seg7_horibend")
    Seg8_horibend = sim.getObjectHandle("Seg8_horibend")
 
    --Seg10_horibend = sim.getObjectHandle("Seg10_horibend")

    --cx
    cx_0 = sim.getObjectHandle("cx_0")
    cx_1 = sim.getObjectHandle("cx_1")
    cx_2 = sim.getObjectHandle("cx_2")
    cx_3 = sim.getObjectHandle("cx_3")
    cx_4 = sim.getObjectHandle("cx_4")
    cx_5 = sim.getObjectHandle("cx_5")
    cx_6 = sim.getObjectHandle("cx_6")
    cx_7 = sim.getObjectHandle("cx_7")
    cx_8 = sim.getObjectHandle("cx_8")
    cx_9 = sim.getObjectHandle("cx_9")
    cx_10 = sim.getObjectHandle("cx_10")
    cx_11 = sim.getObjectHandle("cx_11")
    cx_12 = sim.getObjectHandle("cx_12")
    cx_13 = sim.getObjectHandle("cx_13")
    cx_14 = sim.getObjectHandle("cx_14")
    cx_15 = sim.getObjectHandle("cx_15")
    cx_16 = sim.getObjectHandle("cx_16")
    cx_17 = sim.getObjectHandle("cx_17")
    cx_18 = sim.getObjectHandle("cx_18")
    cx_19 = sim.getObjectHandle("cx_19")

    --cx body joints
    
    bodjoint_0 = sim.getObjectHandle("bodjoint_0")
    bodjoint_1 = sim.getObjectHandle("bodjoint_1")
    bodjoint_2 = sim.getObjectHandle("bodjoint_2")
    bodjoint_3 = sim.getObjectHandle("bodjoint_3")
    bodjoint_4 = sim.getObjectHandle("bodjoint_4")
    bodjoint_5 = sim.getObjectHandle("bodjoint_5")
    bodjoint_6 = sim.getObjectHandle("bodjoint_6")
    bodjoint_7 = sim.getObjectHandle("bodjoint_7")
    bodjoint_8 = sim.getObjectHandle("bodjoint_8")
    bodjoint_9 = sim.getObjectHandle("bodjoint_9")
    bodjoint_10 = sim.getObjectHandle("bodjoint_10")
    bodjoint_11 = sim.getObjectHandle("bodjoint_11")
    bodjoint_12 = sim.getObjectHandle("bodjoint_12")
    bodjoint_13 = sim.getObjectHandle("bodjoint_13")
    bodjoint_14 = sim.getObjectHandle("bodjoint_14")
    bodjoint_15 = sim.getObjectHandle("bodjoint_15")
    bodjoint_16 = sim.getObjectHandle("bodjoint_16")
    bodjoint_17 = sim.getObjectHandle("bodjoint_17")
    bodjoint_18 = sim.getObjectHandle("bodjoint_18")
    bodjoint_19 = sim.getObjectHandle("bodjoint_19")

    --cx joints
    cx0_joint = sim.getObjectHandle("cx0_joint")
    cx1_joint = sim.getObjectHandle("cx1_joint")
    cx2_joint = sim.getObjectHandle("cx2_joint")
    cx3_joint = sim.getObjectHandle("cx3_joint")
    cx4_joint = sim.getObjectHandle("cx4_joint")
    cx5_joint = sim.getObjectHandle("cx5_joint")
    cx6_joint = sim.getObjectHandle("cx6_joint")
    cx7_joint = sim.getObjectHandle("cx7_joint")
    cx8_joint = sim.getObjectHandle("cx8_joint")
    cx9_joint = sim.getObjectHandle("cx9_joint")
    cx10_joint = sim.getObjectHandle("cx10_joint")
    cx11_joint = sim.getObjectHandle("cx11_joint")
    cx12_joint = sim.getObjectHandle("cx12_joint")
    cx13_joint = sim.getObjectHandle("cx13_joint")
    cx14_joint = sim.getObjectHandle("cx14_joint")
    cx15_joint = sim.getObjectHandle("cx15_joint")
    cx16_joint = sim.getObjectHandle("cx16_joint")
    cx17_joint = sim.getObjectHandle("cx17_joint")
    cx18_joint = sim.getObjectHandle("cx18_joint")
    cx19_joint = sim.getObjectHandle("cx19_joint")

    --Ischium
    Ischium_0 = sim.getObjectHandle("Ischium_0")
    Ischium_1 = sim.getObjectHandle("Ischium_1")
    Ischium_2 = sim.getObjectHandle("Ischium_2")
    Ischium_3 = sim.getObjectHandle("Ischium_3")
    Ischium_4 = sim.getObjectHandle("Ischium_4")
    Ischium_5 = sim.getObjectHandle("Ischium_5")
    Ischium_6 = sim.getObjectHandle("Ischium_6")
    Ischium_7 = sim.getObjectHandle("Ischium_7")
    Ischium_8 = sim.getObjectHandle("Ischium_8")
    Ischium_9 = sim.getObjectHandle("Ischium_9")
    Ischium_10 = sim.getObjectHandle("Ischium_10")
    Ischium_11 = sim.getObjectHandle("Ischium_11")
    Ischium_12 = sim.getObjectHandle("Ischium_12")
    Ischium_13 = sim.getObjectHandle("Ischium_13")
    Ischium_14 = sim.getObjectHandle("Ischium_14")
    Ischium_15 = sim.getObjectHandle("Ischium_15")
    Ischium_16 = sim.getObjectHandle("Ischium_16")
    Ischium_17 = sim.getObjectHandle("Ischium_17")
    Ischium_18 = sim.getObjectHandle("Ischium_18")
    Ischium_19 = sim.getObjectHandle("Ischium_19")

    --Merus
    Merus_0 = sim.getObjectHandle("Merus_0")
    Merus_1 = sim.getObjectHandle("Merus_1")
    Merus_2 = sim.getObjectHandle("Merus_2")
    Merus_3 = sim.getObjectHandle("Merus_3")
    Merus_4 = sim.getObjectHandle("Merus_4")
    Merus_5 = sim.getObjectHandle("Merus_5")
    Merus_6 = sim.getObjectHandle("Merus_6")
    Merus_7 = sim.getObjectHandle("Merus_7")
    Merus_8 = sim.getObjectHandle("Merus_8")
    Merus_9 = sim.getObjectHandle("Merus_9")
    Merus_10 = sim.getObjectHandle("Merus_10")
    Merus_11 = sim.getObjectHandle("Merus_11")
    Merus_12 = sim.getObjectHandle("Merus_12")
    Merus_13 = sim.getObjectHandle("Merus_13")
    Merus_14 = sim.getObjectHandle("Merus_14")
    Merus_15 = sim.getObjectHandle("Merus_15")
    Merus_16 = sim.getObjectHandle("Merus_16")
    Merus_17 = sim.getObjectHandle("Merus_17")
    Merus_18 = sim.getObjectHandle("Merus_18")
    Merus_19 = sim.getObjectHandle("Merus_19")

    --Carpus
    Carpus_0 = sim.getObjectHandle("Carpus_0")
    Carpus_1 = sim.getObjectHandle("Carpus_1")
    Carpus_2 = sim.getObjectHandle("Carpus_2")
    Carpus_3 = sim.getObjectHandle("Carpus_3")
    Carpus_4 = sim.getObjectHandle("Carpus_4")
    Carpus_5 = sim.getObjectHandle("Carpus_5")
    Carpus_6 = sim.getObjectHandle("Carpus_6")
    Carpus_7 = sim.getObjectHandle("Carpus_7")
    Carpus_8 = sim.getObjectHandle("Carpus_8")
    Carpus_9 = sim.getObjectHandle("Carpus_9")
    Carpus_10 = sim.getObjectHandle("Carpus_10")
    Carpus_11 = sim.getObjectHandle("Carpus_11")
    Carpus_12 = sim.getObjectHandle("Carpus_12")
    Carpus_13 = sim.getObjectHandle("Carpus_13")
    Carpus_14 = sim.getObjectHandle("Carpus_14")
    Carpus_15 = sim.getObjectHandle("Carpus_15")
    Carpus_16 = sim.getObjectHandle("Carpus_16")
    Carpus_17 = sim.getObjectHandle("Carpus_17")
    Carpus_18 = sim.getObjectHandle("Carpus_18")
    Carpus_19 = sim.getObjectHandle("Carpus_19")

    --Propodus
    Propodus_0 = sim.getObjectHandle("Propodus_0")
    Propodus_1 = sim.getObjectHandle("Propodus_1")
    Propodus_2 = sim.getObjectHandle("Propodus_2")
    Propodus_3 = sim.getObjectHandle("Propodus_3")
    Propodus_4 = sim.getObjectHandle("Propodus_4")
    Propodus_5 = sim.getObjectHandle("Propodus_5")
    Propodus_6 = sim.getObjectHandle("Propodus_6")
    Propodus_7 = sim.getObjectHandle("Propodus_7")
    Propodus_8 = sim.getObjectHandle("Propodus_8")
    Propodus_9 = sim.getObjectHandle("Propodus_9")
    Propodus_10 = sim.getObjectHandle("Propodus_10")
    Propodus_11 = sim.getObjectHandle("Propodus_11")
    Propodus_12 = sim.getObjectHandle("Propodus_12")
    Propodus_13 = sim.getObjectHandle("Propodus_13")
    Propodus_14 = sim.getObjectHandle("Propodus_14")
    Propodus_15 = sim.getObjectHandle("Propodus_15")
    Propodus_16 = sim.getObjectHandle("Propodus_16")
    Propodus_17 = sim.getObjectHandle("Propodus_17")
    Propodus_18 = sim.getObjectHandle("Propodus_18")
    Propodus_19 = sim.getObjectHandle("Propodus_19")

    --Foot
    Foot_0 = sim.getObjectHandle("Foot_0")
    Foot_1 = sim.getObjectHandle("Foot_1")
    Foot_2 = sim.getObjectHandle("Foot_2")
    Foot_3 = sim.getObjectHandle("Foot_3")
    Foot_4 = sim.getObjectHandle("Foot_4")   
    Foot_5 = sim.getObjectHandle("Foot_5")
    Foot_6 = sim.getObjectHandle("Foot_6")
    Foot_7 = sim.getObjectHandle("Foot_7")
    Foot_8 = sim.getObjectHandle("Foot_8")
    Foot_9 = sim.getObjectHandle("Foot_9")
    Foot_10 = sim.getObjectHandle("Foot_10")
    Foot_11 = sim.getObjectHandle("Foot_11")
    Foot_12 = sim.getObjectHandle("Foot_12")
    Foot_13 = sim.getObjectHandle("Foot_13")
    Foot_14 = sim.getObjectHandle("Foot_14")
    Foot_15 = sim.getObjectHandle("Foot_15")
    Foot_16 = sim.getObjectHandle("Foot_16")
    Foot_17 = sim.getObjectHandle("Foot_17")
    Foot_18 = sim.getObjectHandle("Foot_18")
    Foot_19 = sim.getObjectHandle("Foot_19")

    --Force sensor attached to the propodus
    P0_force = sim.getObjectHandle("P0_force")
    P1_force = sim.getObjectHandle("P1_force")
    P2_force = sim.getObjectHandle("P2_force")
    P3_force = sim.getObjectHandle("P3_force")
    P4_force = sim.getObjectHandle("P4_force")
    P5_force = sim.getObjectHandle("P5_force")
    P6_force = sim.getObjectHandle("P6_force")
    P7_force = sim.getObjectHandle("P7_force")
    P8_force = sim.getObjectHandle("P8_force")
    P9_force = sim.getObjectHandle("P9_force")
    P10_force = sim.getObjectHandle("P10_force")
    P11_force = sim.getObjectHandle("P11_force")
    P12_force = sim.getObjectHandle("P12_force")
    P13_force = sim.getObjectHandle("P13_force")
    P14_force = sim.getObjectHandle("P14_force")
    P15_force = sim.getObjectHandle("P15_force")
    P16_force = sim.getObjectHandle("P16_force")
    P17_force = sim.getObjectHandle("P17_force")
    P18_force = sim.getObjectHandle("P18_force")
    P19_force = sim.getObjectHandle("P19_force")

    --Ischium to Merus joint
    IM_0 = sim.getObjectHandle("IM_0")
    IM_1 = sim.getObjectHandle("IM_1")
    IM_2 = sim.getObjectHandle("IM_2")
    IM_3 = sim.getObjectHandle("IM_3")
    IM_4 = sim.getObjectHandle("IM_4")
    IM_5 = sim.getObjectHandle("IM_5")
    IM_6 = sim.getObjectHandle("IM_6")
    IM_7 = sim.getObjectHandle("IM_7")
    IM_8 = sim.getObjectHandle("IM_8")
    IM_9 = sim.getObjectHandle("IM_9")
    IM_10 = sim.getObjectHandle("IM_10")
    IM_11 = sim.getObjectHandle("IM_11")
    IM_12 = sim.getObjectHandle("IM_12")
    IM_13 = sim.getObjectHandle("IM_13")
    IM_14 = sim.getObjectHandle("IM_14")
    IM_15 = sim.getObjectHandle("IM_15")
    IM_16 = sim.getObjectHandle("IM_16")
    IM_17 = sim.getObjectHandle("IM_17")
    IM_18 = sim.getObjectHandle("IM_18")
    IM_19 = sim.getObjectHandle("IM_19")

    --Merus to Carpus joint
    MC_0 = sim.getObjectHandle("MC_0")
    MC_1 = sim.getObjectHandle("MC_1")
    MC_2 = sim.getObjectHandle("MC_2")
    MC_3 = sim.getObjectHandle("MC_3")
    MC_4 = sim.getObjectHandle("MC_4")
    MC_5 = sim.getObjectHandle("MC_5")
    MC_6 = sim.getObjectHandle("MC_6")
    MC_7 = sim.getObjectHandle("MC_7")
    MC_8 = sim.getObjectHandle("MC_8")
    MC_9 = sim.getObjectHandle("MC_9")
    MC_10 = sim.getObjectHandle("MC_10")
    MC_11 = sim.getObjectHandle("MC_11")
    MC_12 = sim.getObjectHandle("MC_12")
    MC_13 = sim.getObjectHandle("MC_13")
    MC_14 = sim.getObjectHandle("MC_14")
    MC_15 = sim.getObjectHandle("MC_15")
    MC_16 = sim.getObjectHandle("MC_16")
    MC_17 = sim.getObjectHandle("MC_17")
    MC_18 = sim.getObjectHandle("MC_18")
    MC_19 = sim.getObjectHandle("MC_19")

    --Carpus to Propodus joint
    CP_0 = sim.getObjectHandle("CP_0")
    CP_1 = sim.getObjectHandle("CP_1")
    CP_2 = sim.getObjectHandle("CP_2")
    CP_3 = sim.getObjectHandle("CP_3")
    CP_4 = sim.getObjectHandle("CP_4")
    CP_5 = sim.getObjectHandle("CP_5")
    CP_6 = sim.getObjectHandle("CP_6")
    CP_7 = sim.getObjectHandle("CP_7")
    CP_8 = sim.getObjectHandle("CP_8")
    CP_9 = sim.getObjectHandle("CP_9")
    CP_10 = sim.getObjectHandle("CP_10")
    CP_11 = sim.getObjectHandle("CP_11")
    CP_12 = sim.getObjectHandle("CP_12")
    CP_13 = sim.getObjectHandle("CP_13")
    CP_14 = sim.getObjectHandle("CP_14")
    CP_15 = sim.getObjectHandle("CP_15")
    CP_16 = sim.getObjectHandle("CP_16")
    CP_17 = sim.getObjectHandle("CP_17")
    CP_18 = sim.getObjectHandle("CP_18")
    CP_19 = sim.getObjectHandle("CP_19")
    
    --Vision_sensor0 = sim.handleProximitySensor()
    --Vision_sensor1 = sim.handleProximitySensor()
    
    -- CPG
    Output_C0 = 0.1
    Output_C1 = 0.1
    Activity_C0 = 0.01
    Activity_C1 = 0.01

    --sensor
    IR_0 = sim.getObjectHandle("IR_0")
    IR_1 = sim.getObjectHandle("IR_1")
    IR0_signal = 0.1
    IR1_signal = 0.1
    
    -- Output
    Output_I0 = 0.001
    Output_I1 = 0.001
    Output_I9 = 0.001
    Output_I10 = 0.001
    Output_I11 = 0.001
    Output_I12 = 0.001
    Output_I5 = 0.001
    Output_I6 = 0.001
    Output_I7 = 0.001
    Output_I8 = 0.001
    I0_output = 1.0
    I1_output = 1.0
    Output_I3 = 0.1
    Output_I4 = 0.1
    
end
function sysCall_actuation()
    -- put your actuation code here
    -- CPG Weight Parameters
    --Weight_C00 = 5.4
    --Weight_C01 = 3.55
    --Weight_C10 = -3.55
    --Weight_C11 = 5.4
    Weight_C00 = 1.4
    Weight_C01 = MI + 0.18
    Weight_C10 = - (MI + 0.18)
    Weight_C11 = 1.4  
    
    -- neural calculation
    Activity_C0 = Weight_C00 * Output_C0 + Weight_C01 * Output_C1
    Activity_C1 = Weight_C11 * Output_C1 + Weight_C10 * Output_C0
    Output_C0 = math.tanh(Activity_C0)
    Output_C1 = math.tanh(Activity_C1)
    --Output_C0 = (math.exp(2*Activity_C0)-1)/(math.exp(2*Activity_C0)+1)
    --Output_C1 = (math.exp(2*Activity_C1)-1)/(math.exp(2*Activity_C1)+1)
end

function sysCall_sensing()
    sim.handleProximitySensor(IR_0)
    sim.handleProximitySensor(IR_1)
    IR0_signal = sim.readProximitySensor(IR_0)
    IR1_signal = sim.readProximitySensor(IR_1)
    --print("IR0_signal " ,IR0_signal)
    --print("IR1_signal " ,IR1_signal)
    IR0_signal = IR0_signal * 2 - 1
    IR1_signal = IR1_signal * 2 - 1
    WeightI0_IR0 = 8.0 --IR sensor 0
    WeightI1_IR1 = 8.0 --IR sensor 1
    Weight_I00 = 5.4
    Weight_I01 = -3.55
    Weight_I10 = -3.55
    Weight_I11 = 5.4
    Activity_I0 = Weight_I00 * Output_I0 + Weight_I01 * Output_I1 + WeightI0_IR0 * IR0_signal
    Activity_I1 = Weight_I11 * Output_I1 + Weight_I10 * Output_I0 + WeightI1_IR1 * IR1_signal
    Output_I0 = (math.exp(2*Activity_I0)-1)/(math.exp(2*Activity_I0)+1) --tanh function
    Output_I1 = (math.exp(2*Activity_I1)-1)/(math.exp(2*Activity_I1)+1)
    Activity_I4 = Output_I1 * -1 --Output_I1 * IR_0
    Output_I4 = Activity_I4
    Activity_I3 = Output_I0 * -1 --Output_I0 * IR_1
    Output_I3 = Activity_I3


    --VRN left (nodes 4, 9, 10, 11, 12, 14)

    WeightI9_I4 = 1.7246
    WeightI10_I4 = -1.7246
    WeightI11_I4 = -1.7246
    WeightI12_I4 = 1.7246
    WeightI14_I9 = 0.5
    WeightI14_I10 = 0.5
    WeightI14_I11 = -0.5
    WeightI14_I12 = -0.5
    WeightI9_C1 = 1.7246
    WeightI10_C1 = -1.7246
    WeightI11_C1 = 1.7246
    WeightI12_C1 = -1.7246
    Bias_I9 = -2.48285
    Bias_I10 = -2.48285
    Bias_I11 = -2.48285
    Bias_I12 = -2.48285


    Activity_I9 = WeightI9_C1 * Output_C1 + WeightI9_I4 * Output_I4 + Bias_I9
    Activity_I10 = WeightI10_C1 * Output_C1 + WeightI10_I4 * Output_I4 + Bias_I10
    Activity_I11 = WeightI11_C1 * Output_C1 + WeightI11_I4 * Output_I4 + Bias_I11
    Activity_I12 = WeightI12_C1 * Output_C1 + WeightI12_I4 * Output_I4 + Bias_I12
    Activity_I14 = WeightI14_I9 * Output_I9 + WeightI14_I10 * Output_I10 + WeightI14_I11 * Output_I11 + WeightI14_I12 * Output_I12 
    Output_I9 = math.tanh(Activity_I9)
    Output_I10 = math.tanh(Activity_I10)
    Output_I11 = math.tanh(Activity_I11)
    Output_I12 = math.tanh(Activity_I12)
    Output_I14 = math.tanh(Activity_I14)

    --VRN right (nodes 3, 5, 6, 7, 8, 13)
    
    WeightI5_I3 = 1.7246
    WeightI6_I3 = -1.7246
    WeightI7_I3 = -1.7246
    WeightI8_I3 =1.7246
    WeightI5_C1 = 1.7246
    WeightI6_C1 = -1.7246
    WeightI7_C1 = 1.7246
    WeightI8_C1 = -1.7246
    WeightI13_I5 = 0.5
    WeightI13_I6 = 0.5
    WeightI13_I7 = -0.5
    WeightI13_I8 = -0.5
    Bias_I5 = -2.48285
    Bias_I6 = -2.48285
    Bias_I7 = -2.48285
    Bias_I8 = -2.48285

    Activity_I5 = WeightI5_C1 * Output_C1 + WeightI5_I3 * Output_I3 + Bias_I5 
    Activity_I6 = WeightI6_C1 * Output_C1 + WeightI6_I3 * Output_I3 + Bias_I6
    Activity_I7 = WeightI7_C1 * Output_C1 + WeightI7_I3 * Output_I3 + Bias_I7
    Activity_I8 = WeightI8_C1 * Output_C1 + WeightI8_I3 * Output_I3 + Bias_I8
    Activity_I13 = WeightI13_I5 * Output_I5 + WeightI13_I6 * Output_I6 + WeightI13_I7 * Output_I7 + WeightI13_I8 * Output_I8 
    Output_I5 = math.tanh(Activity_I5)
    Output_I6 = math.tanh(Activity_I6)
    Output_I7 = math.tanh(Activity_I7)
    Output_I8 = math.tanh(Activity_I8)
    Output_I13 = math.tanh(Activity_I13)
    
    ---Left motors
    
     --Associated parameters

    WeightIM0_I14 = -2.0
    WeightIM1_I14 = 2.0
    WeightIM2_I14 = -2.0
    WeightIM3_I14 = 2.0
    WeightIM4_I14 = -2.0
    WeightIM5_I14 = 2.0
    WeightIM6_I14 = -2.0
    WeightIM14_I14 = 2.0
    WeightIM15_I14 = -2.0
    WeightIM16_I14 = 2.0
    Bias_IM_Joint = 2.0

    WeightMC0_C0 = -0.2
    WeightMC1_C0 = 0.2
    WeightMC2_C0 = -0.2
    WeightMC3_C0 = 0.2
    WeightMC4_C0 = -0.2
    WeightMC5_C0 = 0.2
    WeightMC6_C0 = -0.2
    WeightMC14_C0 = 0.2
    WeightMC15_C0 = -0.2
    WeightMC16_C0 = 0.2
    Bias_MC_Joint = 0.1
    
    --Ischium to Merus joints (IM_x)

    IM_0_control = WeightIM0_I14 * Output_I14 --+ Bias_IM_Joint
    IM_1_control = WeightIM1_I14 * Output_I14 --+ Bias_IM_Joint
    IM_2_control = WeightIM2_I14 * Output_I14 --+ Bias_IM_Joint
    IM_3_control = WeightIM3_I14 * Output_I14 --+ Bias_IM_Joint
    IM_4_control = WeightIM4_I14 * Output_I14 --+ Bias_IM_Joint
    IM_5_control = WeightIM5_I14 * Output_I14 --+ Bias_IM_Joint
    IM_6_control = WeightIM6_I14 * Output_I14 --+ Bias_IM_Joint
    IM_14_control = WeightIM14_I14 * Output_I14 --+ Bias_IM_Joint
    IM_15_control = WeightIM15_I14 * Output_I14 --+ Bias_IM_Joint
    IM_16_control = WeightIM16_I14 * Output_I14 --+ Bias_IM_Joint

    --Merus to Carpus joints (MC_x)

    MC_0_control = WeightMC0_C0 * Output_C0 + Bias_MC_Joint
    MC_1_control = WeightMC1_C0 * Output_C0 + Bias_MC_Joint
    MC_2_control = WeightMC2_C0 * Output_C0 + Bias_MC_Joint
    MC_3_control = WeightMC3_C0 * Output_C0 + Bias_MC_Joint
    MC_4_control = WeightMC4_C0 * Output_C0 + Bias_MC_Joint
    MC_5_control = WeightMC5_C0 * Output_C0 + Bias_MC_Joint
    MC_6_control = WeightMC6_C0 * Output_C0 + Bias_MC_Joint
    MC_14_control = WeightMC14_C0 * Output_C0 + Bias_MC_Joint
    MC_15_control = WeightMC15_C0 * Output_C0 + Bias_MC_Joint
    MC_16_control = WeightMC16_C0 * Output_C0 + Bias_MC_Joint

    ---Right motors
    
    --Associated parameters

    WeightIM7_I13 = 2.0
    WeightIM8_I13 = -2.0
    WeightIM9_I13 = 2.0
    WeightIM10_I13 = -2.0
    WeightIM11_I13 = 2.0
    WeightIM12_I13 = -2.0
    WeightIM13_I13 = 2.0
    WeightIM17_I13 = -2.0
    WeightIM18_I13 = 2.0
    WeightIM19_I13 = -2.0
    
    WeightMC7_C0 = 0.2
    WeightMC8_C0 = -0.2
    WeightMC9_C0 = 0.2
    WeightMC10_C0 = -0.2
    WeightMC11_C0 = 0.2
    WeightMC12_C0 = -0.2
    WeightMC13_C0 = 0.2
    WeightMC17_C0 = -0.2
    WeightMC18_C0 = 0.2
    WeightMC19_C0 = -0.2
    
    --Ischium to Merus joints (IM_x)

    IM_7_control  = - WeightIM7_I13 * Output_I13 --+ Bias_IM_Joint
    IM_8_control  = - WeightIM8_I13 * Output_I13 --+ Bias_IM_Joint
    IM_9_control  = - WeightIM9_I13 * Output_I13 --+ Bias_IM_Joint
    IM_10_control = - WeightIM10_I13 * Output_I13 --+ Bias_IM_Joint
    IM_11_control = - WeightIM11_I13 * Output_I13 --+ Bias_IM_Joint
    IM_12_control = - WeightIM12_I13 * Output_I13 --+ Bias_IM_Joint
    IM_13_control = - WeightIM13_I13 * Output_I13 --+ Bias_IM_Joint
    IM_17_control = - WeightIM17_I13 * Output_I13 --+ Bias_IM_Joint
    IM_18_control = - WeightIM18_I13 * Output_I13 --+ Bias_IM_Joint
    IM_19_control = - WeightIM19_I13 * Output_I13 --+ Bias_IM_Joint

    --Merus to Carpus joints (MC_x)

    MC_7_control = WeightMC7_C0 * Output_C0 + Bias_MC_Joint
    MC_8_control = WeightMC8_C0 * Output_C0 + Bias_MC_Joint
    MC_9_control = WeightMC9_C0 * Output_C0 + Bias_MC_Joint
    MC_10_control = WeightMC10_C0 * Output_C0 + Bias_MC_Joint
    MC_11_control = WeightMC11_C0 * Output_C0 + Bias_MC_Joint
    MC_12_control = WeightMC12_C0 * Output_C0 + Bias_MC_Joint
    MC_13_control = WeightMC13_C0 * Output_C0 + Bias_MC_Joint
    MC_17_control = WeightMC17_C0 * Output_C0 + Bias_MC_Joint
    MC_18_control = WeightMC18_C0 * Output_C0 + Bias_MC_Joint
    MC_19_control = WeightMC19_C0 * Output_C0 + Bias_MC_Joint

    --Segment 0 (Seg_0)
    IM_0_motor = sim.setJointTargetPosition(cx0_joint, IM_0_control * im_movement_factor)
    MC_0_motor = sim.setJointTargetPosition(MC_0, Bias_MC_Joint)
    CP_0_motor = sim.setJointTargetPosition(CP_0, 0.9)
    
    IM_7_motor = sim.setJointTargetPosition(cx7_joint, IM_7_control * im_movement_factor)
    MC_7_motor = sim.setJointTargetPosition(MC_7, Bias_MC_Joint)
    CP_7_motor = sim.setJointTargetPosition(CP_7, 0.9)
    
    --Segment 1 (Seg_1)
    IM_1_motor = sim.setJointTargetPosition(cx1_joint, IM_1_control * im_movement_factor)
    MC_1_motor = sim.setJointTargetPosition(MC_1, Bias_MC_Joint)
    CP_1_motor = sim.setJointTargetPosition(CP_1, 0.9)
    
    IM_8_motor = sim.setJointTargetPosition(cx8_joint, IM_8_control * im_movement_factor)
    MC_8_motor = sim.setJointTargetPosition(MC_8, Bias_MC_Joint)
    CP_8_motor = sim.setJointTargetPosition(CP_8, 0.9)
    
    --Segment 2 (Seg_2)
    IM_2_motor = sim.setJointTargetPosition(cx2_joint, IM_2_control * im_movement_factor)
    MC_2_motor = sim.setJointTargetPosition(MC_2, Bias_MC_Joint)
    CP_2_motor = sim.setJointTargetPosition(CP_2, 0.9)
    
    IM_9_motor = sim.setJointTargetPosition(cx9_joint, IM_9_control * im_movement_factor)
    MC_9_motor = sim.setJointTargetPosition(MC_9, Bias_MC_Joint)
    CP_9_motor = sim.setJointTargetPosition(CP_9, 0.9)
    
    --Segment 3 (Seg_3)
    IM_3_motor = sim.setJointTargetPosition(cx3_joint, IM_3_control * im_movement_factor)
    MC_3_motor = sim.setJointTargetPosition(MC_3, Bias_MC_Joint)
    CP_3_motor = sim.setJointTargetPosition(CP_3, 0.9)
    
    IM_10_motor = sim.setJointTargetPosition(cx10_joint, IM_10_control * im_movement_factor)
    MC_10_motor = sim.setJointTargetPosition(MC_10, Bias_MC_Joint)
    CP_10_motor = sim.setJointTargetPosition(CP_10, 0.9)
    
    --Segment 4 (Seg_4)
    IM_4_motor = sim.setJointTargetPosition(cx4_joint, IM_4_control * im_movement_factor)
    MC_4_motor = sim.setJointTargetPosition(MC_4, Bias_MC_Joint)
    CP_4_motor = sim.setJointTargetPosition(CP_4, 0.9)
    
    IM_11_motor = sim.setJointTargetPosition(cx11_joint, IM_11_control * im_movement_factor)
    MC_11_motor = sim.setJointTargetPosition(MC_11, Bias_MC_Joint)
    CP_11_motor = sim.setJointTargetPosition(CP_11, 0.9)
    
    --Segment 5 (Seg_5)
    IM_5_motor = sim.setJointTargetPosition(cx5_joint, IM_5_control * im_movement_factor)
    MC_5_motor = sim.setJointTargetPosition(MC_5, Bias_MC_Joint)
    CP_5_motor = sim.setJointTargetPosition(CP_5, 0.9)
    
    IM_12_motor = sim.setJointTargetPosition(cx12_joint, IM_12_control * im_movement_factor)
    MC_12_motor = sim.setJointTargetPosition(MC_12, Bias_MC_Joint)
    CP_12_motor = sim.setJointTargetPosition(CP_12, 0.9)
    
    --Segment 6 (Seg_6)
    IM_6_motor = sim.setJointTargetPosition(cx6_joint, IM_6_control * im_movement_factor)
    MC_6_motor = sim.setJointTargetPosition(MC_6, Bias_MC_Joint)
    CP_6_motor = sim.setJointTargetPosition(CP_6, 0.9)
    
    IM_13_motor = sim.setJointTargetPosition(cx13_joint, IM_13_control * im_movement_factor)
    MC_13_motor = sim.setJointTargetPosition(MC_13, Bias_MC_Joint)
    CP_13_motor = sim.setJointTargetPosition(CP_13, 0.9)
    
    --Segment 7 (Seg_7)
    IM_14_motor = sim.setJointTargetPosition(cx14_joint, IM_14_control * im_movement_factor)
    MC_14_motor = sim.setJointTargetPosition(MC_14, Bias_MC_Joint)
    CP_14_motor = sim.setJointTargetPosition(CP_14, 0.9)
    
    IM_17_motor = sim.setJointTargetPosition(cx17_joint, IM_17_control * im_movement_factor)
    MC_17_motor = sim.setJointTargetPosition(MC_17, Bias_MC_Joint)
    CP_17_motor = sim.setJointTargetPosition(CP_17, 0.9)
    
     --Segment 8 (Seg_8)
    IM_15_motor = sim.setJointTargetPosition(cx15_joint, IM_15_control * im_movement_factor)
    MC_15_motor = sim.setJointTargetPosition(MC_15, Bias_MC_Joint)
    CP_15_motor = sim.setJointTargetPosition(CP_15, 0.9)
    
    IM_18_motor = sim.setJointTargetPosition(cx18_joint, IM_18_control * im_movement_factor)
    MC_18_motor = sim.setJointTargetPosition(MC_18, Bias_MC_Joint)
    CP_18_motor = sim.setJointTargetPosition(CP_18, 0.9)
    
     --Segment 9 (Seg_9)
    IM_16_motor = sim.setJointTargetPosition(cx16_joint, IM_16_control * im_movement_factor)
    MC_16_motor = sim.setJointTargetPosition(MC_16, Bias_MC_Joint)
    CP_16_motor = sim.setJointTargetPosition(CP_16, 0.9)
    
    IM_19_motor = sim.setJointTargetPosition(cx19_joint, IM_19_control * im_movement_factor)
    MC_19_motor = sim.setJointTargetPosition(MC_19, Bias_MC_Joint)
    CP_19_motor = sim.setJointTargetPosition(CP_19, 0.9)
    
    sim.setJointTargetPosition(IM_0, MC_0_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_1, MC_1_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_2, MC_2_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_3, MC_3_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_4, MC_4_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_5, MC_5_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_6, MC_6_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_7, MC_7_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_8, MC_8_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_9, MC_9_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_10, MC_10_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_11, MC_11_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_12, MC_12_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_13, MC_13_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_14, MC_14_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_15, MC_15_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_16, MC_16_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_17, MC_17_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_18, MC_18_control*leg_movement_factor + bias_im)
    sim.setJointTargetPosition(IM_19, MC_19_control*leg_movement_factor + bias_im)



    --Segment 0 to Segment 1 joint
    sim.setJointTargetPosition(Seg0_horibend, 0)
    sim.setJointTargetPosition(Seg0_vertbend, 0)
    
    --Segment 1 to Segment 2 joint
    sim.setJointTargetPosition(Seg1_horibend, 0)
    sim.setJointTargetPosition(Seg1_vertbend, 0)
    
    --Segment 2 to Segment 3 joint
    sim.setJointTargetPosition(Seg2_horibend, 0)
    sim.setJointTargetPosition(Seg2_vertbend, 0)
    
    --Segment 3 to Segment 4 joint
    sim.setJointTargetPosition(Seg3_horibend, 0)
    sim.setJointTargetPosition(Seg3_vertbend, 0)
    
    --Segment 4 to Segment 5 joint
    sim.setJointTargetPosition(Seg4_horibend, 0)
    sim.setJointTargetPosition(Seg4_vertbend, 0)
    
    --Segment 5 to Segment 6 joint
    sim.setJointTargetPosition(Seg5_horibend, 0)
    sim.setJointTargetPosition(Seg5_vertbend, 0)
    
    --Segment 6 to Segment 7 joint
    sim.setJointTargetPosition(Seg6_horibend, 0)
    sim.setJointTargetPosition(Seg6_vertbend, 0)
    
    --Segment 7 to Segment 8 joint
    sim.setJointTargetPosition(Seg7_horibend, 0)
    sim.setJointTargetPosition(Seg7_vertbend, 0)
    
    --Segment 8 to Segment 9 joint
    sim.setJointTargetPosition(Seg8_horibend, 0)
    sim.setJointTargetPosition(Seg8_vertbend, 0)
    
    
    -- Seg_0
    bodjoint0_pos = sim.getJointPosition(bodjoint_0)
    IM0_pos = sim.getJointPosition(IM_0)
    MC0_pos = sim.getJointPosition(MC_0)
    CP0_pos = sim.getJointPosition(CP_0)
    
    bodjoint7_pos = sim.getJointPosition(bodjoint_7)
    IM7_pos = sim.getJointPosition(IM_7)
    MC7_pos = sim.getJointPosition(MC_7)
    CP7_pos = sim.getJointPosition(CP_7)

    --Seg_1
    bodjoint1_pos = sim.getJointPosition(bodjoint_1)
    IM1_pos = sim.getJointPosition(IM_1)
    MC1_pos = sim.getJointPosition(MC_1)
    CP1_pos = sim.getJointPosition(CP_1)
    
    bodjoint8_pos = sim.getJointPosition(bodjoint_8)
    IM8_pos = sim.getJointPosition(IM_8)
    MC8_pos = sim.getJointPosition(MC_8)
    CP8_pos = sim.getJointPosition(CP_8)

    --Seg_2
    bodjoint2_pos = sim.getJointPosition(bodjoint_2)
    IM2_pos = sim.getJointPosition(IM_2)
    MC2_pos = sim.getJointPosition(MC_2)
    CP2_pos = sim.getJointPosition(CP_2)
    
    bodjoint9_pos = sim.getJointPosition(bodjoint_9)
    IM9_pos = sim.getJointPosition(IM_9)
    MC9_pos = sim.getJointPosition(MC_9)
    CP9_pos = sim.getJointPosition(CP_9)

    --Seg_3 
    bodjoint3_pos = sim.getJointPosition(bodjoint_3)
    IM3_pos = sim.getJointPosition(IM_3)
    MC3_pos = sim.getJointPosition(MC_3)
    CP3_pos = sim.getJointPosition(CP_3)
    
    bodjoint10_pos = sim.getJointPosition(bodjoint_10)
    IM10_pos = sim.getJointPosition(IM_10)
    MC10_pos = sim.getJointPosition(MC_10)
    CP10_pos = sim.getJointPosition(CP_10)

    --Seg_4 
    bodjoint4_pos = sim.getJointPosition(bodjoint_4)
    IM4_pos = sim.getJointPosition(IM_4)
    MC4_pos = sim.getJointPosition(MC_4)
    CP4_pos = sim.getJointPosition(CP_4)
    
    bodjoint11_pos = sim.getJointPosition(bodjoint_11)
    IM11_pos = sim.getJointPosition(IM_11)
    MC11_pos = sim.getJointPosition(MC_11)
    CP11_pos = sim.getJointPosition(CP_11)

    --Seg_5
    bodjoint5_pos = sim.getJointPosition(bodjoint_5)
    IM5_pos = sim.getJointPosition(IM_5)
    MC5_pos = sim.getJointPosition(MC_5)
    CP5_pos = sim.getJointPosition(CP_5)
    
    bodjoint12_pos = sim.getJointPosition(bodjoint_12)
    IM12_pos = sim.getJointPosition(IM_12)
    MC12_pos = sim.getJointPosition(MC_12)
    CP12_pos = sim.getJointPosition(CP_12)

    --Seg_6 
    bodjoint6_pos = sim.getJointPosition(bodjoint_6)
    IM6_pos = sim.getJointPosition(IM_6)
    MC6_pos = sim.getJointPosition(MC_6)
    CP6_pos = sim.getJointPosition(CP_6)
    
    bodjoint13_pos = sim.getJointPosition(bodjoint_13)
    IM13_pos = sim.getJointPosition(IM_13)
    MC13_pos = sim.getJointPosition(MC_13)
    CP13_pos = sim.getJointPosition(CP_13)
    
      --Seg_7 
    bodjoint14_pos = sim.getJointPosition(bodjoint_14)
    IM14_pos = sim.getJointPosition(IM_14)
    MC14_pos = sim.getJointPosition(MC_14)
    CP14_pos = sim.getJointPosition(CP_14)
    
    bodjoint17_pos = sim.getJointPosition(bodjoint_17)
    IM17_pos = sim.getJointPosition(IM_17)
    MC17_pos = sim.getJointPosition(MC_17)
    CP17_pos = sim.getJointPosition(CP_17)
    
        --Seg_8
    bodjoint15_pos = sim.getJointPosition(bodjoint_15)
    IM15_pos = sim.getJointPosition(IM_15)
    MC15_pos = sim.getJointPosition(MC_15)
    CP15_pos = sim.getJointPosition(CP_15)
    
    bodjoint18_pos = sim.getJointPosition(bodjoint_18)
    IM18_pos = sim.getJointPosition(IM_18)
    MC18_pos = sim.getJointPosition(MC_18)
    CP18_pos = sim.getJointPosition(CP_18)
    
        --Seg_9
    bodjoint16_pos = sim.getJointPosition(bodjoint_16)
    IM16_pos = sim.getJointPosition(IM_16)
    MC16_pos = sim.getJointPosition(MC_16)
    CP16_pos = sim.getJointPosition(CP_16)
    
    bodjoint19_pos = sim.getJointPosition(bodjoint_19)
    IM19_pos = sim.getJointPosition(IM_19)
    MC19_pos = sim.getJointPosition(MC_19)
    CP19_pos = sim.getJointPosition(CP_19)
    

    --Coxa joints that connect to each segment
    --Seg_0
    --cx0_joint = sim.setJointTargetPosition(cx0_joint, 0)
    --cx7_joint = sim.setJointTargetPosition(cx7_joint, 0)

    --Seg_1
    --cx1_joint = sim.setJointTargetPosition(cx1_joint, 0)
    --cx8_joint = sim.setJointTargetPosition(cx8_joint, 0)

    --Seg_2 
    --cx2_joint = sim.setJointTargetPosition(cx2_joint, 0)
    --cx9_joint = sim.setJointTargetPosition(cx9_joint, 0)

    --Seg_3
    --cx3_joint = sim.setJointTargetPosition(cx3_joint, 0)
    --cx10_joint = sim.setJointTargetPosition(cx10_joint, 0)

    --Seg_4
    --cx4_joint = sim.setJointTargetPosition(cx4_joint, 0)
    --cx11_joint = sim.setJointTargetPosition(cx11_joint, 0)

    --Seg_5
    --cx5_joint = sim.setJointTargetPosition(cx5_joint, 0)
    --cx12_joint = sim.setJointTargetPosition(cx12_joint, 0)

    --Seg_6
    --cx6_joint = sim.setJointTargetPosition(cx6_joint, 0)
    --cx13_joint = sim.setJointTargetPosition(cx13_joint, 0)


    --Publish coxa joint positions
    --Seg_0
    --cx0_jointpos = sim.getJointPosition(cx0_joint)
    --cx7_jointpos = sim.getJointPosition(cx7_joint)

    --Seg_1
    --cx1_jointpos = sim.getJointPosition(cx1_joint)
    --cx8_jointpos = sim.getJointPosition(cx8_joint)

    --Seg_2 
    --cx2_jointpos = sim.getJointPosition(cx2_joint)
    --cx9_jointpos = sim.getJointPosition(cx9_joint)

    --Seg_3
    --cx3_jointpos = sim.getJointPosition(cx3_joint)
    --cx10_jointpos = sim.getJointPosition(cx10_joint)

    --Seg_4
    --cx4_jointpos = sim.getJointPosition(cx4_joint)
    --cx11_jointpos = sim.getJointPosition(cx11_joint)

    --Seg_5
    --cx5_jointpos = sim.getJointPosition(cx5_joint)
    --cx12_jointpos = sim.getJointPosition(cx12_joint)

    --Seg_6
    --cx6_jointpos = sim.getJointPosition(cx6_joint)
    --cx13_jointpos = sim.getJointPosition(cx13_joint)
    
    -- Reading the force sensors at each segment
    --Seg_0
    --cx0_forcesense = sim.readForceSensor(cx0_force)
    P0_forcesense = sim.readForceSensor(P0_force)
    --cx7_forcesense = sim.readForceSensor(cx7_force)
    P7_forcesense = sim.readForceSensor(P7_force)

    --Seg_1
    --cx1_forcesense = sim.readForceSensor(cx1_force)
    P1_forcesense = sim.readForceSensor(P1_force)
    --cx8_forcesense = sim.readForceSensor(cx8_force)
    P8_forcesense = sim.readForceSensor(P8_force)

    --Seg_2
    --cx2_forcesense = sim.readForceSensor(cx2_force)
    P2_forcesense = sim.readForceSensor(P2_force)
    --cx9_forcesense = sim.readForceSensor(cx9_force)
    P9_forcesense = sim.readForceSensor(P9_force)

    --Seg_3
    --cx3_forcesense = sim.readForceSensor(cx3_force)
    P3_forcesense = sim.readForceSensor(P3_force)
    --cx10_forcesense = sim.readForceSensor(cx10_force)
    P10_forcesense = sim.readForceSensor(P10_force)

    --Seg_4
    --cx4_forcesense = sim.readForceSensor(cx4_force)
    P4_forcesense = sim.readForceSensor(P4_force)
    --cx11_forcesense = sim.readForceSensor(cx11_force)
    P11_forcesense = sim.readForceSensor(P11_force)

    --Seg_5
    --cx5_forcesense = sim.readForceSensor(cx5_force)
    P5_forcesense = sim.readForceSensor(P5_force)
    --cx12_forcesense = sim.readForceSensor(cx12_force)
    P12_forcesense = sim.readForceSensor(P12_force)

    --Seg_6
    --cx6_forcesense = sim.readForceSensor(cx6_force)
    P6_forcesense = sim.readForceSensor(P6_force)
    --cx13_forcesense = sim.readForceSensor(cx13_force)
    P13_forcesense = sim.readForceSensor(P13_force)
    
    --Seg_7
    --cx14_forcesense = sim.readForceSensor(cx14_force)
    P14_forcesense = sim.readForceSensor(P14_force)
    --cx17_forcesense = sim.readForceSensor(cx17_force)
    P17_forcesense = sim.readForceSensor(P17_force)
    
    --Seg_8
    --cx15_forcesense = sim.readForceSensor(cx15_force)
    P15_forcesense = sim.readForceSensor(P15_force)
    --cx18_forcesense = sim.readForceSensor(cx18_force)
    P18_forcesense = sim.readForceSensor(P18_force)
    
    --Seg_9
    --cx16_forcesense = sim.readForceSensor(cx16_force)
    P16_forcesense = sim.readForceSensor(P16_force)
    --cx19_forcesense = sim.readForceSensor(cx19_force)
    P19_forcesense = sim.readForceSensor(P19_force)
    
    sim.setGraphUserData(Neuron_0, "Neuron_0", Output_C0)
    sim.setGraphUserData(Neuron_0, "Neuron_1", Output_C1)
    sim.setGraphUserData(Hysteresis, "Right_sensor", Output_I3)
    sim.setGraphUserData(Hysteresis, "Left_sensor", Output_I4)
    sim.setGraphUserData(Right_sensor, "Right_sensor", Output_I3)
    sim.setGraphUserData(Left_sensor, "Left_sensor", Output_I4)
    --
    --print("--------------------------")
    print("IR0_signal " ,IR0_signal)
    print("Act I0_signal ",Activity_I0)
    print("Out I0_signal ",Output_I0)
    print("Act I3_signal ",Activity_I3)
    --]]
    --[[
    print("--------------------------")
    print("IR1_signal ",IR1_signal)
    print("Act I1_signal ",Activity_I1)
    print("Out I1_signal ",Output_I1)
    print("Act I4_signal ",Activity_I4)
    --]]


end

function sysCall_cleanup()
    -- do some clean-up here
end

-- See the user manual or the available code snippets for additional callback functions and details

