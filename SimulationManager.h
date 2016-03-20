/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   SimulationManager.h
 * Author: fulop
 *
 * Created on March 20, 2016, 5:27 PM
 */

#ifndef SIMULATIONMANAGER_H
#define SIMULATIONMANAGER_H


#include "../SocketServer/SocketServer.h"

class SimulationManager {

public:

    /**
     * Initializes the simulation. What it does in the background:
     * - Starts ZMQ Socket server
     * 
     */
    void init();
    
    
    /**
     * Checks if simulation is enabled.
     * @return True if simulation enabled and running, false if not.
     */
    bool isSimulationEnabled();
    
    /**
     * Enables the simulation.
     */
    void enableSimulation();
    
    /**
     * Disables the simulation.
     */
    void disableSimulation();
    
    /**
     * Singleton get instance member function.
     * @return the one and only instance of the class.
     */
    SimulationManager& getInstance();
    
    /**
     * Copy constructor.
     * @param orig
     */
    SimulationManager(const SimulationManager& orig);
    
    /**
     * Destructor.
     */
    virtual ~SimulationManager();
    
private:
    
    /* Simulation switch */
    bool simulation_enabled = false;
    
    /**
     * Default constructor.
     */
    SimulationManager();

};

#endif /* SIMULATIONMANAGER_H */

