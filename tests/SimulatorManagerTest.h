/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   SimulatorManagerTest.h
 * Author: fulop
 *
 * Created on Mar 20, 2016, 5:49:18 PM
 */

#ifndef SIMULATORMANAGERTEST_H
#define SIMULATORMANAGERTEST_H

#include <cppunit/extensions/HelperMacros.h>

class SimulatorManagerTest : public CPPUNIT_NS::TestFixture {
    CPPUNIT_TEST_SUITE(SimulatorManagerTest);

    CPPUNIT_TEST(testMethod);
    CPPUNIT_TEST(testFailedMethod);

    CPPUNIT_TEST_SUITE_END();

public:
    SimulatorManagerTest();
    virtual ~SimulatorManagerTest();
    void setUp();
    void tearDown();

private:
    void testMethod();
    void testFailedMethod();
};

#endif /* SIMULATORMANAGERTEST_H */

