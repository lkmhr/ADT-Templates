package ${packageName};

import java.util.List;

<#if includeInterface>import android.app.Activity;</#if>
import android${SupportPackage}.app.ListFragment;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.ViewFlipper;

import ${packageName}.dummy.DummyContent;
<#if applicationPackage??>import ${applicationPackage}.R;</#if>

/**
 * A fragment representing a list of Items.
 * <p />
 <#if includeInterface>
 * Activities containing this fragment MUST implement the {@link Callbacks}
 * interface.
 </#if>
 */
public class ${className} extends ListFragment{

<#if includeInterface>
	// Container Activity must implement this interface
	private OnFragmentInteractionListener mListener;
</#if>	

	/**
     * The Adapter which will be used to populate the ListView with Views.
     */
	Simple${objectKind}Adapter adapter;
	
	/**
     * Mandatory empty constructor for the fragment manager to instantiate the
     * fragment (e.g. upon screen orientation changes).
     */
    public ${className}() {
    }	
	
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // TODO: Change Adapter to display your content
        setListAdapter(new Simple${objectKind}Adapter(getActivity(), DummyContent.ITEMS));
    }
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		
		View view = inflater.inflate(R.layout.${fragment_layout}, container, false);
		
		return view;
	}
<#if includeInterface>
	@Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            mListener = (OnFragmentInteractionListener) activity;
        } catch (ClassCastException e) {
            throw new ClassCastException(activity.toString()
                + " must implement OnFragmentInteractionListener");
        }
    }

    @Override
    public void onDetach() {
        super.onDetach();
        mListener = null;
    }
</#if>	
	
	@Override
	public void onListItemClick(ListView l, View v, int position, long id) {
		super.onListItemClick(l, v, position, id);
<#if includeInterface>
		if (null != mListener) {
            // Notify the active callbacks interface (the activity, if the
            // fragment is attached to one) that an item has been selected.
            mListener.onFragmentInteraction(DummyContent.ITEMS.get(position).id);
        }
</#if>		
        
		ViewFlipper flipper = (ViewFlipper) v.findViewById(R.id.flipper);
		if(flipper.getDisplayedChild() == 0){
			flipper.setInAnimation(getActivity(), R.anim.${collection_name}_in_left);
			flipper.setOutAnimation(getActivity(), R.anim.${collection_name}_out_right);
			flipper.showNext();
		} else{
			flipper.setInAnimation(getActivity(), R.anim.${collection_name}_in_right);
			flipper.setOutAnimation(getActivity(), R.anim.${collection_name}_out_left);
			flipper.showPrevious();
		}
		
	}

	private class Simple${objectKind}Adapter extends BaseAdapter {

		private final Context context;
		private final List<DummyContent.DummyItem> items;
		
		public Simple${objectKind}Adapter(Context context, List<DummyContent.DummyItem> items) {
			this.context = context;
			this.items = items;
		}
		
		@Override
		public int getCount() {
			return items.size();
		}
		
		@Override
		public DummyContent.DummyItem getItem(int position) {
			return items.get(position); 
		}

		@Override
		public long getItemId(int position) {
			return 0;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			
			final ViewHolder holder = new ViewHolder();
			LayoutInflater inflater = (LayoutInflater) context
					.getSystemService(Context.LAYOUT_INFLATER_SERVICE);

			if(convertView == null ){
				convertView = inflater.inflate(R.layout.${fragment_layout}_item, parent, false);
			}
			
			holder.frontView = (TextView) convertView.findViewById(R.id.list_item_front);
			holder.backView = (TextView) convertView.findViewById(R.id.list_item_back);
			
			holder.frontView.setText(items.get(position).getFrontText());
			holder.backView.setText(items.get(position).getBackText());
			
			return convertView;
		}
		
		/**
		* A Holder class for holding views. 
		*/
		private class ViewHolder {
			public TextView frontView;
			public TextView backView;
		}
	}
<#if includeInterface>
	/**
    * This interface must be implemented by activities that contain this
    * fragment to allow an interaction in this fragment to be communicated
    * to the activity and potentially other fragments contained in that
    * activity.
    * <p>
    * See the Android Training lesson <a href=
    * "http://developer.android.com/training/basics/fragments/communicating.html"
    * >Communicating with Other Fragments</a> for more information.
    */
    public interface OnFragmentInteractionListener {
        // TODO: Update argument type and name
        public void onFragmentInteraction(String id);
    }
</#if>	
}
