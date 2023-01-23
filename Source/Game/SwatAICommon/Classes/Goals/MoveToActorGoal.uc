///////////////////////////////////////////////////////////////////////////////

class MoveToActorGoal extends MoveToGoalBase;

///////////////////////////////////////////////////////////////////////////////

var private Actor m_destination;

///////////////////////////////////////////////////////////////////////////////

overloaded function Construct(AI_Resource r, int pri, Actor destination)
{
	super.Construct(r, pri);

	SetDestinationActor(destination);
}

///////////////////////////////////////////////////////////////////////////////
//
// Accessors

function Actor GetDestinationActor()
{
    return m_destination;
}

function vector GetDestination()
{
	return m_destination.Location;
}

///////////////////////////////////////////////////////////////////////////////
//
// Manipulators

function SetDestinationActor(Actor destination)
{
	assertWithDescription((destination != None), "MoveToActorGoal::SetDestinationActor - destination passed in is None!");

	// TODO: if the destination is changed, how do we change the distance sensor to use this new destination instead?
	m_destination = destination;
}

///////////////////////////////////////////////////////////////////////////////

defaultproperties
{
	bInactive  = false
	bPermanent = false
    goalName   = "MoveToActor"
}

///////////////////////////////////////////////////////////////////////////////
