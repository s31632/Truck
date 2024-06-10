public class Trucl extends Transport {
    private double distanceTravelled;
    private double fuelUsed;
    private double loadMass; // in metric tonnes

    public Truck (String manufacturer, String type, int productionYear, double distanceTravelled, double fuelUsed, double loadMass) {
        super(manufacturer, type, productionYear);
        this.distanceTravelled = distanceTravelled;
        this.fuelUsed = fuelUsed;
        this.loadMass = loadMass;
    }

    @Override
    public double computeEfficiency() {
        return distanceTravelled / (fuelUsed + (loadMass * 0.5));
    }
}
