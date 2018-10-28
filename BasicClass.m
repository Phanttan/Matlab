classdef BasicClass
    properties
        value
    end
    methods
        
        function r = roundOff(obj)
            r = round([obj.Value],2);
        end        
end
