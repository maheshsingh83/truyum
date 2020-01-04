package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

public class MenuItemDaoCollectionImplTest {

    static MenuItemDao menudao = new MenuItemDaoCollectionImpl();

    public static void main(String[] args) {
        testGetMenuItemListAdmin();
        testGetMenuItemListCustomer();
        testModifyMenuItem();
        testGetMenuItemListAdmin();

    }

    public static void testGetMenuItemListAdmin() {
        System.out.println("Admin View\n");
        List<MenuItem> menuItem = menudao.getMenuItemListAdmin();
        System.out.printf("%-10s%-20s%-10s%-10s%-15s%-15s%-10s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");
        for (MenuItem menuItem1 : menuItem) {
            System.out.println(menuItem1);

        }
    }

    public static void testGetMenuItemListCustomer() {
        System.out.println("Customer View\n");
        List<MenuItem> menuItem = menudao.getMenuItemListCustomer();

        System.out.printf("%-10s%-20s%-10s%-10s%-15s%-15s%-10s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");
        for (MenuItem menuItem2 : menuItem) {
            System.out.println(menuItem2);

        }

    }

    public static void testModifyMenuItem() {
        System.out.println("Modify Menu Item\n");
        MenuItem menuitem = new MenuItem(1, "Eat and Enjoy", 12345.0f, true,
                DateUtil.convertToDate("03/01/2020"), "Main Dish", false);
        menudao.modifyMenuItem(menuitem);

    }

    public static void testGetMenuItem() {
        System.out.println("Test\n");
        System.out.printf("%-10s%-20s%-10s%-10s%-15s%-15s%-10s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");
        MenuItem menuitem = menudao.getMenuItem(2);
        System.out.println(menuitem);
    }
}
