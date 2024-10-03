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
   [   "Fame & Legend Box 1",
        [
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
        [
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
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 24, 33, 30.0] ],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 1] ],
                     [CMP_PADDING_XY, [ 2.5, 4 ] ],
                     [CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                     [CMP_CUTOUT_HEIGHT_PCT, 50],
                     [CMP_CUTOUT_DEPTH_PCT, 100],
                     [CMP_CUTOUT_WIDTH_PCT, 60],
                     [CMP_CUTOUT_TYPE, EXTERIOR],
                     [POSITION_XY,                   [+120,CENTER]], 
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


    [   "Money Box",
        [
            [ BOX_SIZE_XYZ,                                     [140, 55, 33.0] ],
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
                            [ LBL_TEXT,     "Money"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],  
                 ]
            ]                   
        ]
    ], 


     [   "Wicked Woods",
        [
            [ BOX_SIZE_XYZ,                                     [181, 150, 20.0] ],
            [ BOX_STACKABLE_B, t],

            [ BOX_COMPONENT,
                [
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 126, 146, 14.0] ],
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
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 46, 68, 6.0] ],
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
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 22, 22, 14.0] ],
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
                     [CMP_COMPARTMENT_SIZE_XYZ,  [ 27, 27, 14.0] ],
                     [CMP_SHAPE_VERTICAL_B, true],
                     [CMP_NUM_COMPARTMENTS_XY, [ 1, 1] ],
                     [ CMP_PADDING_XY, [ 2.5, 1.5 ] ],
                     [POSITION_XY,                   [+130, +114]],
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
                            [ LBL_TEXT,     "Wicked Woods"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],  
                 ]
            ]                   
        ]
    ], 

];


MakeAll();