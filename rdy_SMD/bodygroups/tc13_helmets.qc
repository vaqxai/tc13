// Created by Masterworks Industries, TriClonHel V13.0 ""

$modelname "helios/tc13/helmets.mdl"

$model "model" "tc13_undersuit.smd"

$bodygroup "helmet" {
	studio tc13_helmet.smd
	studio arfhelmet.smd
	studio p15helm.smd
	studio barc_helm.smd
	studio paratrooper_helm.smd
	studio tc13_head.smd
}

$bodygroup "armbrace_left"
{
	studio tc13_armbrace_left.smd
	blank
}

$bodygroup "armbrace_right"
{
	studio tc13_armbrace_right.smd
	blank
}

$bodygroup "belt"
{
	studio tc13_belt.smd
	blank
}

$bodygroup "boot_left"
{
	studio tc13_boot_left.smd
	blank
}

$bodygroup "boot_right"
{
	studio tc13_boot_right.smd
	blank
}

$bodygroup "chestplate"
{
	studio tc13_chestplate.smd
	blank
}

$bodygroup "commlink"
{
	studio tc13_commlink.smd
	blank
}

$bodygroup "cylinder"
{
	studio tc13_cylinder.smd
	blank
}

$bodygroup "crotchplate"
{
	studio tc13_dickplate.smd
	blank
}

$bodygroup "elbowpad_left"
{
	studio tc13_elbowpad_left.smd
	blank
}

$bodygroup "elbowpad_right"
{
	studio tc13_elbowpad_right.smd
	blank
}

$bodygroup "handplate_left"
{
	studio tc13_handplate_left.smd
	blank
}

$bodygroup "handplate_right"
{
	studio tc13_handplate_right.smd
	blank
}

$bodygroup "kneepad_left"
{
	studio tc13_kneepad_left.smd
	blank
}

$bodygroup "kneepad_right"
{
	studio tc13_kneepad_right.smd
	blank
}

$bodygroup "lowerleg_left"
{
	studio tc13_lowerleg_left.smd
	blank
}

$bodygroup "lowerleg_right"
{
	studio tc13_lowerleg_right.smd
	blank
}

$bodygroup "pocket_left"
{
	studio tc13_pocket_left.smd
	blank
}

$bodygroup "pocket_right"
{
	studio tc13_pocket_right.smd
	blank
}

$bodygroup "shoulderpad_left"
{
	studio tc13_shoulderpad_left.smd
	blank
}

$bodygroup "shoulderpad_right"
{
	studio tc13_shoulderpad_right.smd
	blank
}

$bodygroup "stomachplate"
{
	studio tc13_stomachplate.smd
	blank
}

$bodygroup "upperarmbrace_left"
{
	studio tc13_upperarmbrace_left.smd
	blank
}

$bodygroup "upperarmbrace_right"
{
	studio tc13_upperarmbrace_right.smd
	blank
}

$bodygroup "upperleg_left"
{
	studio tc13_upperleg_left.smd
	blank
}

$bodygroup "upperleg_right"
{
	studio tc13_upperleg_right.smd
	blank
}

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "helios\tcxiii\base" "helios\tcxiii\bodygroups" "helios\tcxiii\shared"

$attachment "anim_attachment_RH" "ValveBiped.Bip01_R_Hand" 5.00 -5.00 0.00 rotate 0.00 0.00 180
$attachment "forward" "ValveBiped.Bip01_Head1" 0.00 0.00 0.00 rotate 0.00 -90.00 0.00

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$sequence "ragdoll" {
	"kleiner_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$includemodel "m_anm.mdl"

$collisionjoints "kleiner_physics.smd"
{
	$mass 0
	$inertia 10
	$damping 0.01
	$rotdamping 1.5


	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -48 48 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -25 50 0

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -39 39 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -79 95 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -93 23 0

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -95 84 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -86 26 0

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -149 4 0

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -37 37 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -57 59 0

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -149 4 0

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -57 70 0

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -8 75 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -97 32 0

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -12 126 0

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -20 20 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -13 30 0

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -73 6 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -93 30 0

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -8 126 0

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -19 19 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -15 35 0

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -25 6 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -15 35 0
}



$collisiontext
{
	animatedfriction
	{
		"animfrictionmin" "1.000000"
		"animfrictionmax" "400.000000"
		"animfrictiontimein" "0.500000"
		"animfrictiontimeout" "0.300000"
		"animfrictiontimehold" "0.000000"
	}
	editparams
	{
		"rootname" "valvebiped.bip01_pelvis"
		"totalmass" "90.000000"
		"jointmerge" "valvebiped.bip01_pelvis,valvebiped.bip01"
		"jointmerge" "valvebiped.bip01_pelvis,valvebiped.bip01_spine1"
	}
}

// jebac ulane kurwy elo