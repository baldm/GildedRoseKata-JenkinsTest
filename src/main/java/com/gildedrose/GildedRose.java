package com.gildedrose;

import java.util.Objects;

class GildedRose {
    Item[] items;

    public GildedRose(Item[] items) {
        this.items = items;
    }

    public void updateQuality() {
        for (Item item : items) {
            updateItem(item);
        }
    }
    private void updateItem(Item item) {

        // Sell In
        if (!Objects.equals(item.name, "Sulfuras, Hand of Ragnaros")) item.sellIn--;

        // ----- Quality -----

        switch (item.name) {
            // Special items
            case "Sulfuras, Hand of Ragnaros":
                break;
            case "Aged Brie":
                if (item.sellIn < 0) item.quality += 2;
                else item.quality++;
                break;
            case "Backstage passes to a TAFKAL80ETC concert":
                if (item.sellIn < 0) item.quality = 0;
                else if (item.sellIn < 5) item.quality += 3;
                else if (item.sellIn < 10) item.quality += 2;
                else item.quality++;
                break;
            case "Conjured Mana Cake":
                if (item.sellIn < 0) item.quality -= 4;
                else item.quality -= 2;
                break;
            default: // Standard items
                if (item.sellIn < 0) item.quality -= 2;
                else item.quality--;
        }

        // Range check of qual
        if (!Objects.equals(item.name, "Sulfuras, Hand of Ragnaros")) {
            if (item.quality > 50) item.quality = 50;
            else if (item.quality < 0) item.quality = 0;
        }
    }
}