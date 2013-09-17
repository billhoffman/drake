classdef RigidBodySensor 
% this is an interface class for sensors that are composed to form the
% output output of a RigidBodyManipulator
%

% note that an implementation alternative would be to have sensors act as a
% separate dynamical system, but this seems more natural since many sensors
% need to know both x and u, and will not have any state.  We might want to
% revisit this decision at a later time.
  
  methods (Abstract=true)
    y = output(obj,manip,t,x,u);
    fr = getFrame(obj,manip);
    tf = isDirectFeedthrough(obj);
  end
  
  methods 
    function obj = compile(obj,manip);
      % intentionally do nothing here, but can be overloaded if this
      % functionality is needed
    end
    
    function obj = updateBodyIndices(obj,map_from_old_to_new)
      % intentionally do nothing
    end
  end
  
    
end
    