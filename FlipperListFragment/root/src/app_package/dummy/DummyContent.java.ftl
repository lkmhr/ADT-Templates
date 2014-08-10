package ${packageName}.dummy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Helper class for providing sample content for user interfaces created by
 * Android template wizards.
 * <p>
 * TODO: Replace all uses of this class before publishing your app.
 */
public class DummyContent {

    /**
     * An array of sample (dummy) items.
     */
    public static List<DummyItem> ITEMS = new ArrayList<DummyItem>();

    /**
     * A map of sample (dummy) items, by ID.
     */
    public static Map<String, DummyItem> ITEM_MAP = new HashMap<String, DummyItem>();

    static {
        // Add sample items.
        addItem(new DummyItem("1", "Item 1 Front", "Item 1 Back"));
        addItem(new DummyItem("1", "Item 2 Front", "Item 2 Back"));
        addItem(new DummyItem("1", "Item 3 Front", "Item 3 Back"));
        addItem(new DummyItem("1", "Item 4 Front", "Item 4 Back"));
        addItem(new DummyItem("1", "Item 5 Front", "Item 5 Back"));
        addItem(new DummyItem("1", "Item 6 Front", "Item 6 Back"));
        addItem(new DummyItem("1", "Item 7 Front", "Item 7 Back"));
        addItem(new DummyItem("1", "Item 8 Front", "Item 8 Back"));
        addItem(new DummyItem("1", "Item 9 Front", "Item 9 Back"));
    }

    private static void addItem(DummyItem item) {
        ITEMS.add(item);
        ITEM_MAP.put(item.id, item);
    }

    /**
     * A dummy item representing a piece of content.
     */
    public static class DummyItem {
        public String id;
        public String textFront;
        public String textBack;

        
        /**
         * Set up a Dummy Item.
         * 
         * @param id id of the sample (dummy) data.
         * @param textFront content that will be shown in the front of the list item.
         * @param textBack content that will be behind the list item.  
         */
        public DummyItem(String id, String textFront, String textBack) {
            this.id = id;
            this.textFront = textFront;
            this.textBack = textBack;
        }
        
        public String getFrontText() {
            return textFront;
        }
        
        public String getBackText() {
        	return textBack;
        }
    }
}