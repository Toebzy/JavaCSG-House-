union()
{
    union()
    {
        difference()
        {
            linear_extrude(height = 100.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
            {
                scale([100.0, 150.0])
                {
                    M52();
                }
            }
            translate([50.0, 0.0, 10.0])
            {
                linear_extrude(height = 60.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([10.0, 35.0])
                    {
                        M52();
                    }
                }
            }
            translate([-50.0, 30.0, 50.0])
            {
                linear_extrude(height = 30.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([5.0, 30.0])
                    {
                        M52();
                    }
                }
            }
            translate([-50.0, -30.0, 50.0])
            {
                linear_extrude(height = 30.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([5.0, 30.0])
                    {
                        M52();
                    }
                }
            }
        }
        linear_extrude(height = 10.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
        {
            scale([105.0, 155.0])
            {
                M52();
            }
        }
        difference()
        {
            translate([47.0, 0.0, 5.0])
            {
                linear_extrude(height = 70.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([10.0, 45.0])
                    {
                        M52();
                    }
                }
            }
            translate([50.0, 0.0, 10.0])
            {
                linear_extrude(height = 60.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([10.0, 35.0])
                    {
                        M52();
                    }
                }
            }
        }
        union()
        {
            translate([50.0, 0.0, 0.0])
            {
                linear_extrude(height = 10.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([20.0, 45.0])
                    {
                        M52();
                    }
                }
            }
            translate([60.0, 0.0, 0.0])
            {
                linear_extrude(height = 5.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([20.0, 45.0])
                    {
                        M52();
                    }
                }
            }
        }
        union()
        {
            translate([-48.0, 0.0, 63.0])
            {
                linear_extrude(height = 3.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([2.0, 90.0])
                    {
                        M52();
                    }
                }
            }
            translate([-48.0, -30.0, 50.0])
            {
                linear_extrude(height = 30.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([2.0, 3.0])
                    {
                        M52();
                    }
                }
            }
            translate([-48.0, 30.0, 50.0])
            {
                linear_extrude(height = 30.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([2.0, 3.0])
                    {
                        M52();
                    }
                }
            }
            translate([48.0, 30.0, 50.0])
            {
                linear_extrude(height = 30.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([2.0, 3.0])
                    {
                        M52();
                    }
                }
            }
        }
    }
    union()
    {
        rotate([45.0, 0.0, 0.0])
        {
            translate([0.0, 50.0, 110.0])
            {
                linear_extrude(height = 15.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([120.0, 150.0])
                    {
                        M52();
                    }
                }
            }
        }
        rotate([-45.0, 0.0, 0.0])
        {
            translate([0.0, -50.0, 110.0])
            {
                linear_extrude(height = 15.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([120.0, 150.0])
                    {
                        M52();
                    }
                }
            }
        }
        union()
        {
            difference()
            {
                translate([0.0, 0.0, 95.0])
                {
                    linear_extrude(height = 60.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                    {
                        scale([100.0, 40.0])
                        {
                            M52();
                        }
                    }
                }
                translate([50.0, 0.0, 110.0])
                {
                    linear_extrude(height = 20.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                    {
                        scale([5.0, 30.0])
                        {
                            M52();
                        }
                    }
                }
            }
            translate([0.0, 25.0, 95.0])
            {
                linear_extrude(height = 41.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([100.0, 30.0])
                    {
                        M52();
                    }
                }
            }
            translate([0.0, 45.0, 95.0])
            {
                linear_extrude(height = 21.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([100.0, 21.0])
                    {
                        M52();
                    }
                }
            }
            translate([0.0, -25.0, 95.0])
            {
                linear_extrude(height = 41.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([100.0, 30.0])
                    {
                        M52();
                    }
                }
            }
            translate([0.0, -45.0, 95.0])
            {
                linear_extrude(height = 21.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([100.0, 21.0])
                    {
                        M52();
                    }
                }
            }
        }
        difference()
        {
            translate([-15.0, 40.0, 110.0])
            {
                linear_extrude(height = 60.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([25.0, 25.0])
                    {
                        M52();
                    }
                }
            }
            translate([-15.0, 40.0, 110.0])
            {
                linear_extrude(height = 60.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                {
                    scale([15.0, 15.0])
                    {
                        M52();
                    }
                }
            }
        }
        translate([48.0, 0.0, 119.0])
        {
            linear_extrude(height = 2.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
            {
                scale([2.0, 20.0])
                {
                    M52();
                }
            }
        }
        translate([48.0, 0.0, 110.0])
        {
            linear_extrude(height = 20.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
            {
                scale([2.0, 2.0])
                {
                    M52();
                }
            }
        }
    }
}

module M52()
{
    polygon
    (
        points =
        [
            [-0.5, -0.5], 
            [0.5, -0.5], 
            [0.5, 0.5], 
            [-0.5, 0.5]
        ],
        paths =
        [
            [0, 1, 2, 3]
        ]
    );
}
