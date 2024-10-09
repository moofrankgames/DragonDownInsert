include <boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = true; 

// Focus on one box
g_isolated_print_box = ""; 

// Used to visualize how all of the boxes fit together. 
g_b_visualization = true;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 1.5;

// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and 
// you only need to reprint the lid.
// 
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;

data =
[

 [   "Cubes Box",
        [                     [ ENABLED_B, t],
            [ BOX_SIZE_XYZ,                                     [150, 140, 20] ],


            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 46, 66, 18] ], 
                     [CMP_SHAPE, FILLET],
                     [CMP_SHAPE_VERTICAL_B, false],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1,2 ] ],
                    [POSITION_XY,                   [1,1]],

                ]
            ],

            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 46, 53.6, 18] ], 
                     [CMP_SHAPE, FILLET],
                     [CMP_SHAPE_VERTICAL_B, false],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1,2 ] ],
                    [POSITION_XY,                   [49,1]],

                ]
            ],
            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 45.3, 25, 18] ], 
                     [CMP_SHAPE, FILLET],
                     [CMP_SHAPE_VERTICAL_B, false],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1,1 ] ],
                    [POSITION_XY,                   [49,111]],

                ]
            ],
            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 25, 44.3, 18] ], 
                     [CMP_SHAPE, FILLET],
                     [CMP_SHAPE_VERTICAL_B, false],
                     [CMP_NUM_COMPARTMENTS_XY, [ 2,3 ] ],
                    [POSITION_XY,                   [MAX,MAX]],

                ]
            ],

            [ BOX_LID,
                 [
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Cubes"],
                            [ LBL_SIZE,     8 ],
                        ]
                    ],  
                 ]
            ]  
                
                  
        ]
    ],

  [   "Dice Box",
        [                     [ ENABLED_B, t],
            [ BOX_SIZE_XYZ,                                     [162, 32, 16] ],


            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 15, 28, 15] ], 
                     [CMP_SHAPE, SQUARE],
                     [CMP_SHAPE_VERTICAL_B, false],
                     [CMP_NUM_COMPARTMENTS_XY, [ 10, 1] ],
                     [CMP_CUTOUT_SIDES_4B,                   [t,t,f,f]], // all sides
                     [CMP_CUTOUT_HEIGHT_PCT, 80],
                     [CMP_CUTOUT_DEPTH_PCT, 0],
                     [CMP_CUTOUT_WIDTH_PCT, 80],
                ]
            ],

            [ BOX_LID,
                 [
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Dice"],
                            [ LBL_SIZE,     8 ],
                        ]
                    ],  
                 ]
            ]  
                
                  
        ]
    ],
 [   "Small Chip Box",
        [                     [ ENABLED_B, t],
            [ BOX_SIZE_XYZ,                                     [85, 50, 42] ],
            [ BOX_STACKABLE_B, f],
            [LID_FIT_UNDER_B, f],

            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 38, 44, 42 ] ], 
                     [CMP_SHAPE, ROUND],
                     [CMP_SHAPE_VERTICAL_B, false],
                     [CMP_NUM_COMPARTMENTS_XY, [ 2, 1] ],
                     [CMP_PADDING_XY, [ 2.5, 5 ] ],
                     [CMP_SHAPE_ROTATED_B, t],
                     [CMP_CUTOUT_SIDES_4B,                   [f,f,t,t]], // all sides
                    [CMP_CUTOUT_HEIGHT_PCT, 60],
                     [CMP_CUTOUT_DEPTH_PCT, 20],
                     [CMP_CUTOUT_WIDTH_PCT, 60],
                ]
            ],

            [ BOX_LID,
                 [
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Orcs & Dragons"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],  
                 ]
            ]  
                
                  
        ]
    ],

    [   "Large Card Box",
        [                     [ ENABLED_B, t],
            [ BOX_SIZE_XYZ,                                     [25, 68, 95] ],
            [ BOX_STACKABLE_B, f],
            [LID_FIT_UNDER_B, f],
            
            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 22, 65, 92] ], 
                     [CMP_SHAPE, SQUARE],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 1] ],
                     [CMP_PADDING_XY, [ 2.5, 5 ] ],
                     [CMP_CUTOUT_SIDES_4B,                   [f,f,t,t]], // all sides
                     [CMP_CUTOUT_HEIGHT_PCT, 60],
                     [CMP_CUTOUT_DEPTH_PCT, 0],
                     [CMP_CUTOUT_WIDTH_PCT, 60],
                ]
            ],

            [ BOX_LID,
                 [
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Heroes"],
                            [ LBL_SIZE,     AUTO ],
                            [ ROTATION, 90],
                        ]
                    ]  
                 ]
            ]  
                
                  
        ]
    ],
    [   "Small Card Box",
        [                     [ ENABLED_B, t],
            [ BOX_SIZE_XYZ,                                     [104, 64, 78] ],

            [ BOX_NO_LID_B, t ],


            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 48, 58, 74] ], 
                     [CMP_SHAPE, SQUARE],
                     [CMP_SHAPE_VERTICAL_B, false],
                     [CMP_NUM_COMPARTMENTS_XY, [ 2, 1] ],
                     [CMP_PADDING_XY, [ 2.5, 5 ] ],
                     [CMP_CUTOUT_SIDES_4B,                   [t,t,f,f]], // all sides
                ]
            ],


                
                  
        ]
    ],

    [ "small card dividers",
        [
            [ TYPE, DIVIDERS ],
            [ DIV_TAB_TEXT,   ["ITEM","START","SPELL","DEEP","TREAS"]],
            [ DIV_FRAME_SIZE_XY, [45,63]],
            [DIV_TAB_TEXT_FONT, "LaserCut"],
        ]
    ],
   [   "Fame & Legend Box 1",
        [                     [ ENABLED_B, t],
            [ BOX_SIZE_XYZ,                                     [150, 55, 33.0] ],


            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 27, 27, 27.0] ],
                     [CMP_SHAPE, [ROUND]],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 5, 2] ],
                     [ CMP_PADDING_XY, [ 2.5, 5 ] ],
                ]
            ],
                
            [ BOX_LID,
                 [
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Legend & Fame"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],  
                 ]
            ]                   
        ]
    ],

    [   "Fame & Legend Box 2",
        [                     [ ENABLED_B, t],
            [ BOX_SIZE_XYZ,                                     [150, 55, 33.0] ],
            [ BOX_STACKABLE_B, t],

            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 27, 27, 27.0] ],
                     [CMP_SHAPE, [ROUND]],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 4, 2] ],
                     [ CMP_PADDING_XY, [ 2.5, 5 ] ],
                    [POSITION_XY,                   [+1,CENTER]],
                ], 
            ],

            [ BOX_COMPONENT,

                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 24, 40, 31.0] ],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 1] ],
                     [CMP_PADDING_XY, [ 2.5, 4 ] ],
                     [CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                     [CMP_CUTOUT_HEIGHT_PCT, 80],
                     [CMP_CUTOUT_DEPTH_PCT, 100],
                     [CMP_CUTOUT_WIDTH_PCT, 60],
                     [CMP_CUTOUT_TYPE, EXTERIOR],
                     [POSITION_XY,                   [+120,CENTER]], 
                ]
            ],   
            [ BOX_LID,
                 [   
                    [ ENABLED_B, f],
                    [ LABEL,
                        [

                            [ LBL_TEXT,     "Legend & Fame"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],  
                 ]
            ]     
        ]
    ], 


    [   "Coin Box",
        [                     [ ENABLED_B, t],
            [ BOX_SIZE_XYZ,                                     [150, 55, 40.0] ],
            [ BOX_STACKABLE_B, t],

            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 30, 30, 27.0] ],
                     [CMP_SHAPE, [ROUND]],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 2] ],
                     [ CMP_PADDING_XY, [ 2.5, 1.5 ] ],
                     [POSITION_XY,                   [0,CENTER]],
                ]
            ], 
            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 27, 27, 27.0] ],
                     [CMP_SHAPE, [ROUND]],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 2] ],
                     [ CMP_PADDING_XY, [ 2.5, 5 ] ],
                     [POSITION_XY,                   [+32,CENTER]],
                ]
            ], 
            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 24, 24, 27.0] ],
                     [CMP_SHAPE, [ROUND]],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 2] ],
                     [ CMP_PADDING_XY, [ 2.5, 9 ] ],
                     [POSITION_XY,                   [+62,CENTER]],
                ]
            ], 

            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 22, 22, 27.0] ],
                     [CMP_SHAPE, [ROUND]],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 2, 2] ],
                     [ CMP_PADDING_XY, [ 2.5, 13 ] ],
                     [POSITION_XY,                   [+90,CENTER]],
                ]
            ],  
                
            [ BOX_LID,
                 [
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Coins"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],  
                 ]
            ]                   
        ]
    ], 


     [   "Terrain Tray",
        [                     [ ENABLED_B, t],
            [ BOX_SIZE_XYZ,                                     [181, 150, 20.0] ],
            [ BOX_STACKABLE_B, t],
            
            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 175, 143, 3.0] ],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 1] ],
                     [POSITION_XY,                   [2,CENTER]],
                ]
            ], 
            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 126, 146, 17.0] ],
                     [CMP_SHAPE, HEX],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 1] ],
                     [POSITION_XY,                   [2,CENTER]],
                     [CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                     [CMP_CUTOUT_HEIGHT_PCT, 100],
                     [CMP_CUTOUT_DEPTH_PCT, 20],
                     [CMP_CUTOUT_WIDTH_PCT, 30],
                ]
            ], 
           [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 46, 68, 9.0] ],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 1] ],
                     [CMP_PADDING_XY, [ 2.5, 1.5 ] ],
                     [POSITION_XY,                   [+130,3]],
                     [CMP_CUTOUT_SIDES_4B, [ t, f, f, f ] ],
                     [CMP_CUTOUT_HEIGHT_PCT, 100],
                     [CMP_CUTOUT_DEPTH_PCT, 0],
                     [CMP_CUTOUT_WIDTH_PCT, 30],
                
                ]
            ], 
           [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 22, 22, 17.0] ],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 2, 1] ],
                     [ CMP_PADDING_XY, [ 2.5, 1.5 ] ],
                     [POSITION_XY,                   [+130, +74]],
                    [CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                     [CMP_CUTOUT_HEIGHT_PCT, 100],
                     [CMP_CUTOUT_DEPTH_PCT, 80],
                     [CMP_CUTOUT_WIDTH_PCT, 60],
                ]
            ], 

           [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 27, 27, 17.0] ],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 1] ],
                     [ CMP_PADDING_XY, [ 2.5, 1.5 ] ],
                     [POSITION_XY,                   [+130, +109]],
                    [CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                     [CMP_CUTOUT_HEIGHT_PCT, 100],
                     [CMP_CUTOUT_DEPTH_PCT, 80],
                     [CMP_CUTOUT_WIDTH_PCT, 60],
                ]
            ], 
            [ BOX_LID,
                 [
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Terrain Boxes"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],  
                 ]
            ]                 
        ]
    ], 

   [   "Mini Terrain Tray",
        [                     [ ENABLED_B, t],
            [ BOX_SIZE_XYZ,                                     [149, 150, 19.0] ],
            
            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 126, 146, 15.0] ],
                     [CMP_SHAPE, HEX],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 1] ],
                     [POSITION_XY,                   [2,CENTER]],
                     [CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                     [CMP_CUTOUT_HEIGHT_PCT, 100],
                     [CMP_CUTOUT_DEPTH_PCT, 20],
                     [CMP_CUTOUT_WIDTH_PCT, 30],
                ]
            ], 
           [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 46, 68, 18.0] ],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 1] ],
                     [CMP_PADDING_XY, [ 2.5, 1.5 ] ],
                     [POSITION_XY,                   [CENTER,CENTER]],
                     [CMP_CUTOUT_SIDES_4B, [ f, f, t, f ] ],
                     [CMP_CUTOUT_HEIGHT_PCT, 100],
                     [CMP_CUTOUT_DEPTH_PCT, 100],
                     [CMP_CUTOUT_WIDTH_PCT, 30],
                
                ]
            ], 
           [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 22, 22, 16.0] ],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 1] ],
                     [ CMP_PADDING_XY, [ 2.5, 1.5 ] ],
                     [POSITION_XY,                   [2, MAX]],
                    [CMP_CUTOUT_SIDES_4B, [ f, t, f, f ] ],
                     [CMP_CUTOUT_HEIGHT_PCT, 100],
                     [CMP_CUTOUT_DEPTH_PCT, 80],
                     [CMP_CUTOUT_WIDTH_PCT, 60],
                ]
            ], 
            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 22, 22, 16.0] ],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 1] ],
                     [ CMP_PADDING_XY, [ 2.5, 1.5 ] ],
                     [POSITION_XY,                   [2, 2]],
                    [CMP_CUTOUT_SIDES_4B, [ t, f, f, f ] ],
                     [CMP_CUTOUT_HEIGHT_PCT, 100],
                     [CMP_CUTOUT_DEPTH_PCT, 80],
                     [CMP_CUTOUT_WIDTH_PCT, 60],
                ]
            ], 

           [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 27, 27, 16.0] ],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 1] ],
                     [ CMP_PADDING_XY, [ 2.5, 1.5 ] ],
                     [POSITION_XY,                   [116, 2]],
                     [CMP_CUTOUT_SIDES_4B, [ t, f, f, f ] ],
                     [CMP_CUTOUT_HEIGHT_PCT, 100],
                     [CMP_CUTOUT_DEPTH_PCT, 80],
                     [CMP_CUTOUT_WIDTH_PCT, 60],
                ]
            ], 
            [ BOX_LID,
                 [
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Terrain Box"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],  
                 ]
            ]                 
        ]
    ] 


];


MakeAll();