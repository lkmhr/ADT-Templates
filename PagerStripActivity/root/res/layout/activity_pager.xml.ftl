<android.support.v4.view.ViewPager xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:id="@+id/pager"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context="${relativePackage}.${activityClass}" 
  
  	<#if features == "tabStrip"><android.support.v4.view.PagerTabStrip
    <#else><android.support.v4.view.PagerTitleStrip</#if>
        android:id="@+id/pager_header"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_gravity="top"
        android:background="#303030"
        android:paddingBottom="4dp"
        android:paddingTop="4dp"
        style="?android:attr/textAppearanceSmall"
        android:textColor="#f0f0f0" />
</android.support.v4.view.ViewPager>