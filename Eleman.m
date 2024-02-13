
classdef Eleman
   properties
       type
       name
       node1
       node2
       value
       voltage
       current
       
       
       mutual_inductance
       name1
       node1_1
       node2_1
       value1
       voltage1
       current1
       
       name2
       node1_2
       node2_2
       value2
       voltage2
       current2
       
       
       dependent_node1
       dependent_node2
   end
   
   methods
       function thisEleman = Eleman(type,name1,node1_1,node2_1,value1,name2,node1_2,node2_2,value2,mutual_inductance)
           if(type=="ML")
               thisEleman.type=type;
               thisEleman.name1=name1;
               thisEleman.name2=name2;
               thisEleman.node1_1=node1_1;
               thisEleman.node1_2=node1_2;
               thisEleman.node2_1=node2_1;
               thisEleman.node2_2=node2_2;
               thisEleman.value1=value1;
               thisEleman.value2=value2;
               thisEleman.mutual_inductance=mutual_inductance;
           elseif((type=='Z')||(type=='H')||(type=='Y')||(type=='T'))
               thisEleman.type=type;
               thisEleman.name=name1;
               thisEleman.node1=node1_1;
               thisEleman.node2=node2_1;
               thisEleman.value=value1;
               thisEleman.dependent_node1=name2;
               thisEleman.dependent_node2=node1_2;
           else
               thisEleman.type=type;
               thisEleman.name=name1;
               thisEleman.node1=node1_1;
               thisEleman.node2=node2_1;
               thisEleman.value=value1;
           end

       end
   end
end
