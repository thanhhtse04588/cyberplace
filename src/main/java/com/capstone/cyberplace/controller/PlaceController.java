package com.capstone.cyberplace.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.capstone.cyberplace.common.CommonConstant;
import com.capstone.cyberplace.dto.PlaceDetail;
import com.capstone.cyberplace.dto.PlaceQuickView;
import com.capstone.cyberplace.dto.SearchCondition;
import com.capstone.cyberplace.dto.form.EquipmentListForm;
import com.capstone.cyberplace.dto.form.PostPlaceForm;
import com.capstone.cyberplace.dto.form.UpdatePlaceForm;
import com.capstone.cyberplace.model.CheckingList;
import com.capstone.cyberplace.model.DistrictDB;
import com.capstone.cyberplace.model.EquipmentList;
import com.capstone.cyberplace.model.ImageLink;
import com.capstone.cyberplace.model.Map;
import com.capstone.cyberplace.model.Place;
import com.capstone.cyberplace.model.RoleOfPlace;
import com.capstone.cyberplace.model.StreetDB;
import com.capstone.cyberplace.model.WardDB;
import com.capstone.cyberplace.repository.PlaceRepository;
import com.capstone.cyberplace.service.impl.CheckingListServiceImpl;
import com.capstone.cyberplace.service.impl.DistrictDBServiceImpl;
import com.capstone.cyberplace.service.impl.EquipmentListServiceImpl;
import com.capstone.cyberplace.service.impl.ImageLinkServiceImpl;
import com.capstone.cyberplace.service.impl.MapServiceImpl;
import com.capstone.cyberplace.service.impl.PlaceServiceImpl;
import com.capstone.cyberplace.service.impl.RoleOfPlaceServiceImpl;
import com.capstone.cyberplace.service.impl.StreetDBServiceImpl;
import com.capstone.cyberplace.service.impl.WardDBServiceImpl;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/cp")
public class PlaceController {

	@Autowired
	private PlaceServiceImpl placeServiceImpl;

	@Autowired
	private RoleOfPlaceServiceImpl roleOfPlaceServiceImpl;
	@Autowired
	private DistrictDBServiceImpl districtDBServiceImpl;
	@Autowired
	private WardDBServiceImpl wardDBServiceImpl;
	@Autowired
	private StreetDBServiceImpl streetDBServiceImpl;
	@Autowired
	private MapServiceImpl mapServiceImpl;

	@Autowired
	private PlaceRepository placerepository;

	@Autowired
	private ImageLinkServiceImpl imageLinkServiceImpl;

	@Autowired
	private EquipmentListServiceImpl equipmentListServiceImpl;

	@Autowired
	private CheckingListServiceImpl checkingListServiceImpl;

	/*
	 * trả về danh sách top 6 place active có nhiều view nhất
	 */
	@GetMapping("/places/top6")
	public List<PlaceQuickView> getTop6() {

		List<Place> listP = placeServiceImpl.getTop6();

		return getPlaceQuickView(listP);
	}

	/*
	 * trả về tất cả place có trong hệ thống (dành cho site admin)
	 */
	@GetMapping("/places/page")
	public Page<Place> getPagePlace(@RequestParam("page") int page, @RequestParam("number") int number) {

		Pageable pageable = PageRequest.of(page, number);

		return placerepository.getAllPageable(pageable);
	}

	/*
	 * trả về tất cả place đang active
	 */
	@GetMapping("/places/checkplace")
	public int checkPlace(@RequestParam("placeid") int placeID) {

		Place p = placeServiceImpl.getPlaceByPlaceID(placeID);

		// trả về status tương ứng
		return p.getStatusPlaceID();

	}

	/*
	 * trả về tất cả place đang active
	 */
	@GetMapping("/places/all")
	public List<PlaceQuickView> getAllActive() {

		List<Place> listP = placeServiceImpl.getAll();

		return getPlaceQuickView(listP);
	}

	// ---------------------test function with place id =2------------------
	@GetMapping("/places/test")
	public Map test() {
		Map m = mapServiceImpl.getMapIDByPlaceID(22);
		Place p = placerepository.getOneActiveByPlaceID(2);
		List<ImageLink> listS = imageLinkServiceImpl.getListImageByPlaceID(2);
		List<String> list = new ArrayList<String>();
		for (ImageLink i : listS) {
			list.add(i.getImage_link());
		}
		List<EquipmentList> listE = equipmentListServiceImpl.getListEquipByPlaceID(2);

		List<EquipmentListForm> listEQ = new ArrayList<EquipmentListForm>();

		for (EquipmentList e : listE) {
			EquipmentListForm eq = new EquipmentListForm();
			eq.setName(e.getEquipmentName());
			eq.setPrice(e.getPrice());
			eq.setLikeNew(e.getLikeNew());
			eq.setQuantity(e.getQuantity());
			eq.setEquipmentDescrible(e.getEquipmentDescribe());
			listEQ.add(eq);
		}
		PostPlaceForm ps = new PostPlaceForm();
		ps.setTitle(p.getTitle());
		ps.setPrice(p.getPrice());
		ps.setListImageLink(list);
		ps.setListEquip(listEQ);

		return m;
	}

	/*
	 * trả thông tin cho trang update place
	 */
	@GetMapping("/places/fillupdate")
	public PostPlaceForm fillDataToUpdatePlaceForm(@RequestParam("placeid") int placeID) {

		Place p = placerepository.getPlaceByPlaceID(placeID);

		// get list image link

		List<ImageLink> listS = imageLinkServiceImpl.getListImageByPlaceID(placeID);
		List<String> list = new ArrayList<String>();
		for (ImageLink i : listS) {
			list.add(i.getImage_link());
		}

		// get equipment list
		List<EquipmentList> listE = equipmentListServiceImpl.getListEquipByPlaceID(placeID);

		List<EquipmentListForm> listEQ = new ArrayList<EquipmentListForm>();

		for (EquipmentList e : listE) {
			EquipmentListForm eq = new EquipmentListForm();
			eq.setName(e.getEquipmentName());
			eq.setPrice(e.getPrice());
			eq.setLikeNew(e.getLikeNew());
			eq.setQuantity(e.getQuantity());
			eq.setEquipmentDescrible(e.getEquipmentDescribe());
			listEQ.add(eq);
		}

		// get check time meeing

		String checkedDate = "";
		CheckingList checked = checkingListServiceImpl.getCheckingByPlaceID(placeID);
		if (checked != null) {
			checkedDate = checked.getDateTime().toString();
		}

		// get map infor

		Map m = mapServiceImpl.getMapIDByPlaceID(p.getPlaceID());

		// fill form
		PostPlaceForm ps = new PostPlaceForm();
		convertPlaceToPost(p, ps);
		ps.setListImageLink(list);
		ps.setListEquip(listEQ);

		ps.setCheckingDate(checkedDate);
		ps.setLatitude(m.getLatitude());
		ps.setLongtitude(m.getLongtitude());

		return ps;
	}

	/*
	 * update place
	 */
	@PostMapping("/places/update")
	public boolean updatePlace(@Valid @RequestBody UpdatePlaceForm form) {

		try {
			placeServiceImpl.updatePlace(form.getTitle(), form.getPrice(), form.getArea(), form.getDistrictID(),
					form.getWardID(), form.getStreetID(), form.getAddressDetail(), form.getRoleOfPlaceID(),
					form.getFrontispiece(), form.getHomeDirection(), form.getNumberFloors(), form.getNumberBedrooms(),
					form.getNumberToilets(), form.getDescriptions(), form.getContactName(), form.getPhoneNumber(),
					form.getContactAddress(), form.getEmail(), form.getPlacceID());

		} catch (Exception e) {
			System.out.println("update place fail");
			return false;
		}

		try {
			mapServiceImpl.updateMap(form.getLatitude(), form.getLongtitude(), form.getPlacceID());
		} catch (Exception e) {
			System.out.println("update map fail");
		}

		try {
			equipmentListServiceImpl.deleteListEquipByPlaceID(form.getPlacceID());
			if (form.getListEquip() != null && !form.getListEquip().isEmpty()) {
				try {
					for (EquipmentListForm item : form.getListEquip()) {
						equipmentListServiceImpl.insertEquipmentItem(form.getPlacceID(), item.getName(),
								item.getQuantity(), item.getPrice(), item.getLikeNew(), item.getEquipmentDescrible());

					}
				} catch (Exception e) {
					System.out.print("insert equip error");
					return false;
				}
			}
		} catch (Exception e) {
			System.out.println("delete equip fail");
		}

		try {
			imageLinkServiceImpl.deleteListImageByPlaceID(form.getPlacceID());

			if (form.getListImageLink() != null && !form.getListImageLink().isEmpty()) {
				try {
					for (String s : form.getListImageLink()) {
						imageLinkServiceImpl.insertImageLink(form.getPlacceID(), s);
					}
				} catch (Exception e) {
					System.out.print("insert image link error");
					return false;
				}

			}
		} catch (Exception e) {
			System.out.println("delete image fail");
		}

		try {
			checkingListServiceImpl.updateItemCheckingList(form.getPlacceID(), form.getCheckingDate());
		} catch (Exception e) {
			System.out.print("update check list error");
			return false;
		}

		return true;
	}

	// ---------------------------------------

	/*
	 * trả về chi tiết place theo ID
	 */
	@GetMapping("/places/{id}")
	public PlaceDetail getOneById(@PathVariable int id) {

		Place p = placeServiceImpl.getOneActiveByPlaceID(id);
		DistrictDB d = districtDBServiceImpl.getOneDistrictByID(p.getDistrict_id());
		WardDB w = wardDBServiceImpl.getOneWardByID(p.getWard_id());
		StreetDB s = streetDBServiceImpl.getOneStreetByID(p.getStreet_id());
		Map m = mapServiceImpl.getMapIDByPlaceID(id);
		RoleOfPlace r = roleOfPlaceServiceImpl.getRoleByID(p.getRoleOfPlaceID());

		PlaceDetail pd = new PlaceDetail();
		pd.setAddress(p.getAddress());
		pd.setArea(p.getArea());
		pd.setBedRooms(p.getBedRooms());
		pd.setCounterView(p.getCounterView());
		pd.setDescription(p.getDescription());
		pd.setDistrict(d.getDistrict());
		pd.setFrontispiece(p.getFrontispiece());
		pd.setHomeDirection(p.getHomeDirection());
		pd.setImageLarge(p.getImage_large());
		pd.setLatitude(m.getLatitude());
		pd.setLongtitude(m.getLongtitude());
		pd.setPlaceID(p.getPlaceID());
		pd.setPrice(p.getPrice());
		pd.setRoleOfPlace(r.getRoleName());
		pd.setStreet(s.getStreetName());
		pd.setTitle(p.getTitle());
		pd.setToilets(p.getToilets());
		pd.setWard(w.getWard_name());

		return pd;
	}

	/*
	 * trả về danh sách ảnh theo placeID
	 */
	@GetMapping("/places/images/{id}")
	public List<String> getListImageLinkByPlaceID(@PathVariable int id) {

		List<ImageLink> listImage = imageLinkServiceImpl.getListImageByPlaceID(id);
		List<String> list = new ArrayList<String>();
		for (ImageLink im : listImage) {
			list.add(im.getImage_link());
		}
		return list;
	}

	/*
	 * trả về danh sách kết quả tìm kiếm theo page
	 */

	@PostMapping("/places/search-page")
	public List<PlaceQuickView> getListSearchByPage(@Valid @RequestBody SearchCondition cond) {
		String formatTitle = "";
		if (!cond.getTitle().equals("")) {
			formatTitle = "%" + cond.getTitle() + "%";
		}
		Pageable pageable = PageRequest.of(cond.getPage(), cond.getAmount());

		List<Place> listP = placeServiceImpl.searhPlace(formatTitle, cond.getDistrictID(), cond.getRoleOfPlaceID(),
				cond.getAreaMin(), cond.getAreaMax(), cond.getPriceMin(), cond.getPriceMax());

		List<PlaceQuickView> listContent = getPlaceQuickView(listP);

		return toPage(listContent, pageable).getContent();
	}

	/*
	 * insert các thông tin trong form rao tin
	 */
	@PostMapping("/places/insert-places")
	public boolean insertPlace(@Valid @RequestBody PostPlaceForm form) {

		int placeID = getPlaceIDAfterInserted(form);

		if (form.getListEquip() != null && !form.getListEquip().isEmpty()) {
			try {
				for (EquipmentListForm item : form.getListEquip()) {
					equipmentListServiceImpl.insertEquipmentItem(placeID, item.getName(), item.getQuantity(),
							item.getPrice(), item.getLikeNew(), item.getEquipmentDescrible());

				}
			} catch (Exception e) {
				System.out.print("insert equip error");
				return false;
			}
		}
		if (form.getListImageLink() != null && !form.getListImageLink().isEmpty()) {
			try {
				for (String s : form.getListImageLink()) {
					imageLinkServiceImpl.insertImageLink(placeID, s);
				}
			} catch (Exception e) {
				System.out.print("insert image link error");
				return false;
			}

		}

		try {
			checkingListServiceImpl.insertItemToCheckingList(placeID, form.getCheckingDate(),
					CommonConstant.Checking_Status_ID_Pending);
		} catch (Exception e) {
			System.out.print("insert checking error");
			return false;
		}

		try {
			mapServiceImpl.insertMap(form.getLongtitude(), form.getLatitude(), placeID);
		} catch (Exception e) {
			System.out.print("insert checking error");
			return false;
		}

		return true;
	}

	/*
	 * trả về số kết quả tìm được
	 */
	@PostMapping("/places/count-search-result")
	public int getCountSearch(@Valid @RequestBody SearchCondition cond) {
		String formatTitle = "";
		if (!cond.getTitle().equals("")) {
			formatTitle = "%" + cond.getTitle() + "%";
		}

		List<Place> listP = placeServiceImpl.searhPlace(formatTitle, cond.getDistrictID(), cond.getRoleOfPlaceID(),
				cond.getAreaMin(), cond.getAreaMax(), cond.getPriceMin(), cond.getPriceMax());

		return listP.size();
	}

	//////////////////////////////////////////////////////////////////////////
	/*
	 * xử lý phân trang
	 */
	private Page<PlaceQuickView> toPage(List<PlaceQuickView> list, Pageable pageable) {
		if (pageable.getOffset() >= list.size()) {
			return Page.empty();
		}
		int startIndex = (int) pageable.getOffset();
		int endIndex = (int) ((pageable.getOffset() + pageable.getPageSize()) > list.size() ? list.size()
				: pageable.getOffset() + pageable.getPageSize());
		List subList = list.subList(startIndex, endIndex);
		return new PageImpl(subList, pageable, list.size());
	}

	/*
	 * format list place thành định dạng xem trên trang chủ
	 */
	public List<PlaceQuickView> getPlaceQuickView(List<Place> listP) {

		List<PlaceQuickView> list = new ArrayList<>();
		List<RoleOfPlace> listR = roleOfPlaceServiceImpl.getAllRole();
		List<DistrictDB> listD = districtDBServiceImpl.listArea();

		for (Place p : listP) {
			for (RoleOfPlace rop : listR) {
				if (rop.getRoleOfPlaceID() == p.getRoleOfPlaceID()) {
					PlaceQuickView item = new PlaceQuickView();
					item.setArea(p.getArea());
					item.setImageLarge(p.getImage_large());
					item.setPlaceID(p.getPlaceID());
					item.setPrice(p.getPrice());
					item.setBedRooms(p.getBedRooms());
					item.setRoleOfPlaceName(rop.getRoleName());
					item.setTitle(p.getTitle());
					item.setToilets(p.getToilets());

					for (DistrictDB d : listD) {
						if (p.getDistrict_id() == d.getId()) {
							item.setDistrict(d.getDistrict());
						}
					}

					list.add(item);
				}
			}
		}

		return list;
	}

	/*
	 * lấy ra place id sau khi insert thông tin vào bảng place
	 */
	public int getPlaceIDAfterInserted(PostPlaceForm form) {

		try {
			Place p = new Place();
			p.setOwnerID(form.getUserID());
			p.setTitle(form.getTitle());
			p.setPrice(form.getPrice());
			p.setArea(form.getArea());
			p.setDistrict_id(form.getDistrictID());
			p.setWard_id(form.getWardID());
			p.setStreet_id(form.getStreetID());
			p.setAddress(form.getAddressDetail());
			p.setRoleOfPlaceID(form.getRoleOfPlaceID());
			p.setStatusPlaceID(CommonConstant.Place_Status_ID_Pending);
			p.setCounterView(0);
			p.setFrontispiece(form.getFrontispiece());
			p.setHomeDirection(form.getHomeDirection());
			p.setFloors(form.getNumberFloors());
			p.setBedRooms(form.getNumberBedrooms());
			p.setToilets(form.getNumberToilets());
			p.setDescription(form.getDescriptions());
			p.setImage_large(form.getListImageLink().get(0));
			p.setContactAddress(form.getContactAddress());
			p.setContactName(form.getContactName());
			p.setContactPhoneNumber(form.getPhoneNumber());
			p.setContactEmail(form.getEmail());
			p.setDatePost(String.valueOf(java.time.LocalDate.now()));
			p = placerepository.save(p);
			placerepository.flush();

			return p.getPlaceID();

		} catch (Exception e) {
			System.out.print("insert place error");
		}

		return -1;
	}

	/*
	 * đổ thông tin place ra post để update
	 */
	public void convertPlaceToPost(Place p, PostPlaceForm pf) {

		pf.setAddressDetail(p.getAddress());

		pf.setArea(p.getArea());
		pf.setContactAddress(p.getContactAddress());
		pf.setContactName(p.getContactName());
		pf.setPhoneNumber(p.getContactPhoneNumber());
		pf.setEmail(p.getContactEmail());
		pf.setDescriptions(p.getDescription());
		pf.setDistrictID(p.getDistrict_id());
		pf.setFrontispiece(p.getFrontispiece());
		pf.setNumberFloors(p.getFloors());
		pf.setHomeDirection(p.getHomeDirection());
		pf.setNumberBedrooms(p.getBedRooms());
		pf.setNumberToilets(p.getToilets());
		pf.setTitle(p.getTitle());
		pf.setPrice(p.getPrice());
		pf.setRoleOfPlaceID(p.getRoleOfPlaceID());
		pf.setStreetID(p.getStreet_id());
		pf.setWardID(p.getWard_id());

	}

}
