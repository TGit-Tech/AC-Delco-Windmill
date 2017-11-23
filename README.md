# AC-Delco Alternator Windmill
An AC Delco alternator Windmill for wind power generation

*INCOMPLETE PROJECT - Use for experimental only*
Tested in 40mph winds found that gear slippage and destruction occurs
Need to Refactor the design for more stability
However, Project has demonstrated the ability to charge @ ~ 20mph winds
This includes self-excitement ( Actual power gained )

![Windmill Picture](/pics/Assembly-Model.jpg)
![Windmill Picture](/pics/Assembly-RightSide.jpg)


## Introduction
-
![Windmill Picture](/pics/FrontComplete1.jpg)

## Specification
- Takes 18-mph winds to barely start charging the battery
- Which doesn't take into account the ( 4V @ 0.85A = 3.4W ) Idle waste
- Can also run ( 3.7Vdc @ 0.62A = 2.294W )


## Raw Materials Needed
- (1) Free 12Vdc AC-Delco Auto Alternator [ $0 ]
- (10) DIN rail, slotted, 35mm, 10mm height, 1m length, aluminum [ $36.00 ]

    [https://www.automationdirect.com/adc/Shopping/Catalog/Enclosures_-z-_Subpanels_-z-_Thermal_Management_-z-_Lighting/Enclosure_Parts_-a-_Accessories/Internal_Component_Mounting_Accessories/DIN_Rails/DN-R35SAL1)](https://www.automationdirect.com/adc/Shopping/Catalog/Enclosures_-z-_Subpanels_-z-_Thermal_Management_-z-_Lighting/Enclosure_Parts_-a-_Accessories/Internal_Component_Mounting_Accessories/DIN_Rails/DN-R35SAL1)
    
- (1) Double 5" x 144" Beige Vinyl Lap Siding [ $7.95 ]
    
    [https://www.homedepot.com/p/Double-5-in-x-144-in-Beige-Vinyl-Lap-Siding-PC50NBH/302174965](https://www.homedepot.com/p/Double-5-in-x-144-in-Beige-Vinyl-Lap-Siding-PC50NBH/302174965)



## Electrical Materials
- 14 AWG Wire; Enough for Excitement ( pole 1 ) and Regulator ( pole 2 )
- 10 AWG Wire; Alternator ( Batt. ) to Batterry
- 40 Amp Diode?
- (2) Female Solderless Connectors for Alternator ( pole 1 & pole 2 )
- (2) O-Ring Solderless Connectors for Alternator ( Batt. & Ground )
- Incomplete list; check back later

## Bolts Needed
    - (1) 5/16" x 5" Coarse Bolt    Hub-Mount Cross Bolt
    - (1) 5/16" x 2" Bolt           For Hub Center
    - (2) 5/16" Nuts                For Double Nuts on Hub Bolt
    - (1) 5/16" x ?" Bolt           For Alternator Top Mount ( Alt Threaded Hole )
    - (1) 3/8" x ?" Bolt            For Alternator Bottom Mount
    - (1) 3/8" Nut                  For Alternator Bottom Mount
    - (4) #10-24 x 2" Screws        For 4-Rail Gears ( 9.1x Step Up )
    - (8) #10 Nuts                  For Double nuts on each Gear screw
    - (8) #10 x 3/4" Wide Washers   For each side of Rail Gears
    - (9) #10-24 x 1/2" Screws      For Vinyl Siding to DIN / 3-per-blade
    - (9) #10 Standard Washers      For Vinyl Siding to DIN / 3-per-blade
    - (9) #10 Nuts                  For Vinyl Siding to DIN / 3-per-blade
    
## Tools Needed
- Wrench Sizes
    - Phillips Head Screwdriver for #10 Screws
    - 3/8" for #10 Machine Screws
    - 1/2" for Hub, Alt Top Mount
    - 9/16" for Alt Bottom Mount
    - 15/16" for Alt Center Bolt
    
- Drill Bits
    - Drill bit for Top Alternator Bolt hole size 5/16" bolt
    
![Model Picture](/pics/Assembly-2.jpg)

## Knowledge obtained
- Alternator excitement
    - Pole #1 closest to Batt. is Excitement Source
    - Pole #2 Turns ON/OFF Pole #1 Excitement at ~15Vdc and under
    - Pole #2 Isn't linear ( i.e. doesn't apply more excitement as voltage goes down )
    - Pole #1 @ 2.8Vdc,  0.35A = 0.98W but isn't strong enough to build voltage
    - Pole #1 @ 4.5Vdc,  1.24A = 5.58W is IDEAL for 9x gear-up
    - Pole #1 @ 10.7Vdc, 2.60A = 27.82W
    - Pole #1 @ 14.2Vdc, 3.50A = 49.7W
- Wiring
    - Use diodes to route alternator Batt. back into Pole #1 ( excitement )
    - Use diodes to ensure Batt. feeds battery only when charge levels
    - Startup feed of 4.5Vdc diode into Pole #1
    - Using above, when wind increases excitement increases till battery can charge
    - Need a Wind kick in start ( DC-DC Buck on battery w/Arduino turn on? )
    - 