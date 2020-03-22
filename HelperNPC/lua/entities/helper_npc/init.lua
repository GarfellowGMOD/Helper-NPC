AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("config.lua")

include("config.lua")
include("shared.lua")


util.AddNetworkString("updateView")


// ENT Functions: 
function ENT:Initialize()
	self:SetModel( model_NPC_outside )
	self:SetHullType( HULL_HUMAN )
	self:SetHullSizeNormal()
	self:SetNPCState( NPC_STATE_SCRIPT )
	self:SetSolid( SOLID_BBOX )
	self:CapabilitiesAdd( bit.bor( CAP_ANIMATEDFACE, CAP_TURN_HEAD ) )
	self:SetUseType( SIMPLE_USE )
	self:DropToFloor()
	self:SetMaxYawSpeed( 90 )	
end

function ENT:Use(a, c)
	net.Start("updateView")
	net.Send(a)
end