using Godot;
using System;

public partial class player_bar : CharacterBody2D
{
    [Export]
    public int Speed { get; set; } = 400;

    public void GetInput()
    {
            Vector2 inputDirection = inputDirection.GetVector("left", "right", "up", "down");
            Velocity = inputDirection * Speed;
    }


    public override void _PhysicsProcess(double delta)
    {
        GetInput();
        MoveAndSlide();
    }
}
