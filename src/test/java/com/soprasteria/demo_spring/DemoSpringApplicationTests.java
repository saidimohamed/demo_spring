package com.soprasteria.demo_spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.junit.Assert;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoSpringApplicationTests {

    @Test
    public void contextLoads() {
    }

    @Test
    public void test1() {
        int i = 0;
        Assert.assertTrue(i == 1);
    }

    @Test
    public void test2() {
        int i = 0;
        Assert.assertTrue(i != 1);
    }

    @Test
    public void test3() {
        int i = 0;
        Assert.assertEquals("",0, i, 0);
    }

}
