package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public interface MenuItemDao {

    public List<MenuItem> getMenuItemListAdmin();// all item should be displayed

    public List<MenuItem> getMenuItemListCustomer();// depends upon DOL and status

    public void modifyMenuItem(MenuItem menuitem);// update the menu items

    public MenuItem getMenuItem(long menuItemId);// retrieve the particular main menu

}
