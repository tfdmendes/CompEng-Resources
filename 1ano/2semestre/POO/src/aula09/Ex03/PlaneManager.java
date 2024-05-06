    package aula09.Ex03;

    import java.util.ArrayList;
    import java.util.HashSet;
    import java.util.Set;

    public class PlaneManager {
        Set<Plane> planeList = new HashSet<>();
        
        public PlaneManager(){}

        public void addPlane(Plane plane){
            planeList.add(plane);
        }

        public void removePlane(String id){
            for(Plane p : planeList){
                if (p.getId().equals(id)){
                    planeList.remove(p);
                }   
            }
        }

        public Plane searchPlane(String id){
            if (planeList == null)
                return null;
            for(Plane p : planeList){
                if(p.getId().equals(id))
                    return p;
                else
                    return null;
            }
            return null;
        }

        public ArrayList<Plane> getCommercialPlanes(){
            ArrayList<Plane> commercialPlanesList = new ArrayList<>();
            if(planeList == null)
                return null;
            for(Plane p : planeList){
                if (p instanceof CommercialPlane)
                    commercialPlanesList.add(p);
            }
            return commercialPlanesList;
        }

        public ArrayList<Plane> getMilitaryPlanes(){
            ArrayList<Plane> militaryPlanesList = new ArrayList<>();
            if(planeList == null)
                return null;
            for(Plane p : planeList){
                if (p instanceof MilitaryPlane)
                    militaryPlanesList.add(p);
            }
            return militaryPlanesList;
        }

        public void printAllPlanes(){
            for(Plane p : planeList){
                System.out.println(p);
                System.out.println("\n");
            }
        }

        public Plane getFastestPlane(){
            int speedBeingCompared = 0;
            Plane fastestPlane = null;

            for(Plane p : planeList){
                if (p.getMaxSpeed() > speedBeingCompared){
                    speedBeingCompared = p.getMaxSpeed();
                    fastestPlane = p;
                }
            }
            return fastestPlane;
        }


    }
