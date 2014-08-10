<?xml version="1.0"?>
<recipe>

    <#if useSupport><dependency mavenUrl="com.android.support:support-v4:19.+"/></#if>

	<!-- animation code to add -->
	<instantiate from="res/anim/in_left.xml"
                 to="${escapeXmlAttribute(resOut)}/anim/${collection_name}_in_left.xml" />
	<instantiate from="res/anim/in_right.xml"
                 to="${escapeXmlAttribute(resOut)}/anim/${collection_name}_in_right.xml" />
	<instantiate from="res/anim/out_left.xml"
                 to="${escapeXmlAttribute(resOut)}/anim/${collection_name}_out_left.xml" />
	<instantiate from="res/anim/out_right.xml"
                 to="${escapeXmlAttribute(resOut)}/anim/${collection_name}_out_right.xml" />
                 
	<!-- layouts code to add -->
	<instantiate from="res/layout/fragment_list.xml"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragment_layout}.xml" />
	<instantiate from="res/layout/fragment_list_item.xml"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragment_layout}_item.xml" />

 	<!-- activities code to add -->                
    <instantiate from="src/app_package/FlipperListFragment.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${className}.java" />
    <instantiate from="src/app_package/dummy/DummyContent.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/dummy/DummyContent.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${className}.java" />

</recipe>
